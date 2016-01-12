;;; init-powerline.el --- conifg of powerline.el -*- coding: utf-8; lexical-binding: t -*-

;; Copyright (C) 2014  Ken Okada

;; Author: Ken Okada <keno.ss57@gmail.com>

;; Apache License, Version 2.0

;;; Commentary:

;; 

;;; Code:

(eval-when-compile
  (setq byte-compile-warnings '(not cl-functions))
  (require 'cl)
  (require 'erfi-macros)
  (erfi:use-short-macro-name))

(require 'cl-lib)

(require 'powerline)

;;;
;;; `powerline-angle-left' and `powerline-angle-right'
;;;

;; To avoid a compile error. This function is only used in macro `pl/angle'.
;; I think this is not a good idea; this funcion and macros `pl/foobar' are called only once
;; at the compile time.  However, I follow the way of original `powerline.el'.
(eval-when-compile
  (defun pl/wrap-defun* (name dir width let-vars body &optional face-i)
    "A generalization of `pl/wrap-defun'. If FACE-I is non-nil, it is used instead of interpolated color."
    (let* ((src-face (if (eq dir 'left) 'face1 'face2))
           (dst-face (if (eq dir 'left) 'face2 'face1)))
      `(defun ,(intern (format "powerline-%s-%s" name (symbol-name dir)))
         (face1 &optional face2 height)
         (setq face2 (or face2 face1))
         (when window-system
           (unless height
             (setq height (pl/separator-height)))
           (let* ,(append `((color1 (when ,src-face
                                      (pl/hex-color (face-attribute ,src-face :background))))
                            (color2 (when ,dst-face
                                      (pl/hex-color (face-attribute ,dst-face :background))))
                            (colori (if ',face-i
                                        (pl/hex-color (face-attribute ',face-i :background))
                                      (when (and color1 color2) (pl/interpolate color1 color2))))
                            (color1 (or color1 "None"))
                            (color2 (or color2 "None"))
                            (colori (or colori "None")))
                          let-vars)
             (create-image ,(append `(concat (format "/* XPM */ static char * %s_%s[] = { \"%s %s 3 1\", \"0 c %s\", \"1 c %s\", \"2 c %s\","
                                                     ,(replace-regexp-in-string "-" "_" name)
                                                     (symbol-name ',dir)
                                                     ,width
                                                     height
                                                     color1
                                                     color2
                                                     colori))
                                    body
                                    '("};"))
                           'xpm t
                           :ascent 'center
                           :face (when (and face1 face2)
                                   ,dst-face)))))))
  )

(defmacro pl/angle (dir)
  "Generate an angle XPM function for DIR."
  (let ((row-modifier (if (eq dir 'left) 'identity 'reverse)))
    (pl/wrap-defun* "angle" dir 'middle-width
                    '((border-width 4)
                      (width (1- (/ height 2)))
                      (middle-width (+ border-width (1- (ceiling height 2)))))
                    `((cl-loop for i from 0 to width
                               concat (pl/pattern-to-string
                                       (,row-modifier (pl/row-pattern i middle-width border-width))))
                      ;; (when (cl-oddp height)
                      ;;   (pl/pattern-to-string (,row-modifier (append (make-list middle-width 0)
                      ;;                                                (make-list border-width 2)))))
                      (when (cl-oddp height)
                        (pl/pattern-to-string (,row-modifier (append (make-list (- middle-width border-width) 0)
                                                                     (make-list border-width 2)))))
                      (cl-loop for i from width downto 0
                               concat (pl/pattern-to-string
                                       (,row-modifier (pl/row-pattern i middle-width border-width)))))
                    'default)))

(pl/memoize (pl/angle left))
(pl/memoize (pl/angle right))
(pl/reset-cache)


;;;
;;; Configuration
;;;

(setq evil-normal-state-msg  " NORMAL "
      evil-insert-state-msg  " INSERT "
      evil-replace-state-msg " REPLAC "
      evil-emacs-state-msg   " EMACS  "
      evil-visual-state-msg-alist '((normal . " VISUAL ") (line . " V LINE ") (block . " V BLCK "))
      )

(dolist (state '(normal insert replace emacs visual))
  (eval `(defface ,(intern (concat "modeline-evil-" (symbol-name state) "-state"))
           nil "Evil modeline face.")))
(custom-set-faces
  '(modeline-evil-normal-state
    ((t (:background "darkolivegreen"
         :foreground "black"))))
  '(modeline-evil-insert-state
    ((t (:background "#500000"
         :foreground "black"))))
  '(modeline-evil-replace-state
    ((t (:background "chocolate1"
         :foreground "black"))))
  '(modeline-evil-visual-state
    ((t (:background "#55295b"
         :foreground "black"))))
  '(modeline-evil-emacs-state
    ((t (:background "gray50"
         :foreground "black"))))
  )
; #55295b 桑の実色 くわのみいろ


;; Copied from `helm-util.el', but modified.
(defun keu:current-buffer-narrowed-p (&optional buffer)
  "Check if BUFFER is narrowed.  Default is current buffer."
  (with-current-buffer (or buffer (current-buffer))
    (let ((beg (point-min))
          (end (point-max))
          (total (buffer-size)))
      (or (/= beg 1) (/= end (1+ total))))))


(setq-default
 mode-line-format
 (let ((separator-left  'powerline-angle-left)
       (separator-right 'powerline-angle-right))
   `("%e"
     (:eval
      (let* ((active (powerline-selected-window-active))
             (mode-line (if active 'mode-line         'mode-line-inactive))
             (face0     (if active 'mode-line         'mode-line-inactive))
             (face1     (if active 'powerline-active1 'powerline-inactive1))
             (face2     (if active 'powerline-active2 'powerline-inactive2))
             (evil-face (erfi:case evil-state
                          ((normal) 'modeline-evil-normal-state)
                          ((insert) 'modeline-evil-insert-state)
                          ((visual) 'modeline-evil-visual-state)
                          ((emacs) 'modeline-evil-emacs-state)
                          (t 'modeline-evil-emacs-state)))
             (lhs1 (list (powerline-alternate-left 'default face0)
                         (replace-regexp-in-string ; escape %
                          "%" "%%"
                          (powerline-raw '("%e" format-mode-line mode-line-mule-info
                                           mode-line-client mode-line-modified mode-line-remote " ")
                                         nil 'l))
                         (,separator-left face0 evil-face)
                         (powerline-raw (evil-mode-line-state-msg) evil-face)
                         (,separator-left evil-face mode-line)
                         (powerline-buffer-id face0 'l)
                         (powerline-raw " ")
                         (,separator-left 'mode-line face1)
                         (powerline-major-mode face1 'l)
                         (powerline-raw " " face1)))
             (lhs2 (when (keu:current-buffer-narrowed-p)
                     (list (,separator-left face1)
                           (powerline-narrow face1 'l)
                           (powerline-raw " " face1))))
             (lhs3 (list (,separator-left face1 face2)
                         (powerline-vc face2 'r)))
             (rhs (list (powerline-raw global-mode-string face2 'r)
                        (,separator-right face2 face1)
                        (powerline-raw " " face1)
                        ,@(when (boundp 'which-func-mode)
                            '((when which-func-mode
                                (powerline-raw which-func-format face1 'r))))
                        (,separator-right face1 'mode-line)
                        (powerline-raw " %l : %2c " nil)
                        (,separator-right 'mode-line)
                        (powerline-raw " ")
                        ;; "All - All", "Top - xx%", "xx% - yy%", "Bot - tom"
                        (powerline-raw (replace-regexp-in-string ; escape %
                                        "%" "%%"
                                        (concat (substring (format-mode-line "%p") 0 3)
                                                " - "
                                                (substring (let1 str (format-mode-line "%P")
                                                             (concat str str))
                                                           3 6)))
                                       nil 'r)
                        (powerline-alternate-right face0 'default)
                        )))
        (concat (powerline-render lhs1)
                (powerline-render lhs2)
                (powerline-render lhs3)
                (powerline-fill face2 (powerline-width rhs))
                (powerline-render rhs)))))))


      ;; (let ((mode-line nil) (face0 nil) (face1 nil) (face2 nil)
      ;;       (evil-face (erfi:case evil-state
      ;;                    ((normal) 'modeline-evil-normal-state)
      ;;                    ((insert) 'modeline-evil-insert-state)
      ;;                    ((visual) 'modeline-evil-visual-state)
      ;;                    ((emacs)  'modeline-evil-emacs-state)
      ;;                    (t        'modeline-evil-emacs-state))))
      ;;   (if (powerline-selected-window-active)
      ;;       (setq mode-line 'mode-line
      ;;             face0     'mode-line
      ;;             face1     'powerline-active1
      ;;             face2     'powerline-active2)
      ;;       (setq mode-line 'mode-line-inactive
      ;;             face0     'mode-line-inactive
      ;;             face1     'powerline-inactive1
      ;;             face2     'powerline-inactive2))
      ;;   (let ((lhs1 (list (powerline-alternate-left 'default face0)
      ;;                     (replace-regexp-in-string ; escape %
      ;;                      "%" "%%"
      ;;                      (powerline-raw '("%e" format-mode-line mode-line-mule-info
      ;;                                       mode-line-client mode-line-modified mode-line-remote " ")
      ;;                                     nil 'l))
      ;;                     (,separator-left face0 evil-face)
      ;;                     (powerline-raw (evil-mode-line-state-msg) evil-face)
      ;;                     (,separator-left evil-face mode-line)
      ;;                     (powerline-buffer-id face0 'l)
      ;;                     (powerline-raw " ")
      ;;                     (,separator-left 'mode-line face1)
      ;;                     (powerline-major-mode face1 'l)
      ;;                     (powerline-raw " " face1)))
      ;;         (lhs2 (when (keu:current-buffer-narrowed-p)
      ;;                 (list (,separator-left face1)
      ;;                       (powerline-narrow face1 'l)
      ;;                       (powerline-raw " " face1))))
      ;;         (lhs3 (list (,separator-left face1 face2)
      ;;                     (powerline-vc face2 'r)))
      ;;         (rhs (list (powerline-raw global-mode-string face2 'r)
      ;;                    (,separator-right face2 face1)
      ;;                    (powerline-raw " " face1)
      ;;                    ,@(when (boundp 'which-func-mode)
      ;;                        '((when which-func-mode
      ;;                            (powerline-raw which-func-format face1 'r))))
      ;;                    (,separator-right face1 'mode-line)
      ;;                    (powerline-raw " %4l : %2c " nil)
      ;;                    (,separator-right 'mode-line)
      ;;                    (powerline-raw " ")
      ;;                    ;; "All - All", "Top - xx%", "xx% - yy%", "Bot - tom"
      ;;                    (powerline-raw (replace-regexp-in-string ; escape %
      ;;                                    "%" "%%"
      ;;                                    (concat (substring (format-mode-line "%p") 0 3)
      ;;                                            " - "
      ;;                                            (substring (let1 str (format-mode-line "%P")
      ;;                                                         (concat str str))
      ;;                                                       3 6)))
      ;;                                   nil 'r)
      ;;                    (powerline-alternate-right face0 'default)
      ;;                    )))
      ;;     (concat (powerline-render lhs1)
      ;;             (powerline-render lhs2)
      ;;             (powerline-render lhs3)
      ;;             (powerline-fill face2 (powerline-width rhs))
      ;;             (powerline-render rhs))))))))



(setq-default
 mode-line-format
 (let* ((separator-left  'powerline-angle-left)    ; angle は標準では未定義
        (separator-right 'powerline-angle-right))
   `("%e"
     (:eval
      (let* ((active (powerline-selected-window-active))
             ...
             (evil-face (erfi:case evil-state
                          ((normal) 'modeline-evil-normal-state)
                          ((insert) 'modeline-evil-insert-state)
                          ((visual) 'modeline-evil-visual-state)
                          ((emacs) 'modeline-evil-emacs-state)
                          (t 'modeline-evil-emacs-state)))
             (lhs (list (powerline-alternate-left 'default face0)
                        ...
                        (,separator-left face0 evil-face)
                        (powerline-raw (evil-mode-line-state-msg) evil-face)
                        (,separator-left evil-face mode-line)
                        ...
                        ))
             (rhs (list ...)))
        (concat (powerline-render lhs)
                (powerline-fill face2 (powerline-width rhs))
                (powerline-render rhs)))))))

;;; init-powerline.el ends here
