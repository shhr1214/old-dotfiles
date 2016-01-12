;;; 20-flycheck.el --- flycheckの設定

;;; Commentary:

;;; Code:
;; install Flymake
(package-install-with-refresh 'flycheck)
(require 'flycheck)

(add-hook 'after-init-hook #'global-flycheck-mode)

;;; 20-flycheck.el ends here
