;; theme
(setq custom-theme-directory "~/.emacs.d/themes/")

(package-install-with-refresh 'atom-one-dark-theme)

(load-theme 'charcoal-black t)
(enable-theme 'charcoal-black)

;; windowの透明化
;; Color
(if window-system (progn
    (set-background-color "Black")
    (set-foreground-color "LightGray")
    (set-cursor-color "Gray")
    (set-frame-parameter nil 'alpha 90) ;透明度
    ))
;; 透明度を変更するコマンド M-x set-alpha
;; http://qiita.com/marcy@github/items/ba0d018a03381a964f24
(defun set-alpha (alpha-num)
  "set frame parameter 'alpha"
  (interactive "nAlpha: ")
  (set-frame-parameter nil 'alpha (cons alpha-num '(90))))

