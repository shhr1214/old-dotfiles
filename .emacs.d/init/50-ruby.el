;;;; 50-ruby.el --- Rubyに関する設定

;;; Commentary:

;;; Code:

(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files" t)
(add-to-list 'auto-mode-alist '("\\.rb$latex " . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

(package-install-with-refresh 'ruby-electric)
(require 'ruby-electric)
(add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))
(setq ruby-electric-expand-delimiters-list nil)

(add-hook 'ruby-mode-hook 'flycheck-mode)
;;; 50-ruby.el ends here
