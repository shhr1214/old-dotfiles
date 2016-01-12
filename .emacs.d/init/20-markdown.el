;;;; 20-markdown.el --- markdown-modeに関する設定

;;; Commentary:

;;; Code:
(package-install-with-refresh 'markdown-mode)
(require 'markdown-mode)

(setq auto-mode-alist
      (append '(("\\.md$" . markdown-mode)
                ) auto-mode-alist))

;;; 20-markdown.el ends here
