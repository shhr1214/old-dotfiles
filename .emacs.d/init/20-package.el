;;;; 20-package.el --- パッケージに関する設定

;;; Commentary:

;;; Code:

;; emacs lisp auto compile
(package-install-with-refresh 'auto-async-byte-compile)

(require 'auto-async-byte-compile)
(setq auto-async-byte-compile-exclude-files-regexp "/junk/")
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)

;;; 20-package.el ends here
