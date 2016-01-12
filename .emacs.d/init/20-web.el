;;;; 20-web.el --- web-modeに関する設定

;;; Commentary:

;;; Code:

;; web-mode
(package-install-with-refresh 'web-mode)
(require 'web-mode)
;; 拡張子の設定
(add-to-list 'auto-mode-alist '("\\.phtml$"     . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp$"       . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x$"   . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb$"       . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?$"     . web-mode))
;; インデント関係
(defun web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
;;  (setq web-mode-php-offset    4)
;;  (setq web-mode-java-offset   4)
;;  (setq web-mode-asp-offset    4)
  (setq web-mode-style-padding t)
  (setq web-mode-script-padding t)
  (setq web-mode-block-padding t)
  (setq tab-width 2))
(add-hook 'web-mode-hook 'web-mode-hook)

;;; 20-web.el ends here
