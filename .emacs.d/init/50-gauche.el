;;;; 50-gauche.el --- Gaucheに関する設定

;;; Commentary:

;;; Code:
(setq process-coding-system-alist
       (cons '("gosh" utf-8 . utf-8) process-coding-system-alist))
(setq scheme-program-name "gosh -i")
(autoload 'scheme-mode "cmuscheme" "Major mode for Scheme." t)
 (autoload 'run-scheme "cmuscheme" "Run an inferior Scheme process." t)
(defun scheme-other-window ()
   "Run scheme on other window"
   (interactive)
   (switch-to-buffer-other-window
    (get-buffer-create "*scheme*"))
   (run-scheme scheme-program-name))
 (define-key global-map
   "\C-cg" 'scheme-other-window)

;;; 50-gauche.el ends here