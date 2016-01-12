;;;; 50-lisp.el --- Haskellに関する設定

;;; Commentary:

;;; Code:

;; slime
(package-install-with-refresh 'slime)
(setq inferior-lisp-program "/usr/local/bin/clisp")
(add-to-list 'load-path "/Applications/slime")
(require 'slime)
(slime-setup)

;;; 50-lisp.el ends here
