;;;; 20-textile.el --- markdown-modeに関する設定
 
;;; Commentary:
 
;;; Code:
(package-install-with-refresh 'textile-mode)
(require 'textile-mode)
 
(setq auto-mode-alist
      (append '(("\\.textile$" . textile-mode)
                ) auto-mode-alist))
 
;;; 20-textile.el ends here
