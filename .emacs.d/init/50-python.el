;;;; 50-python.el --- Pythonに関する設定

;;; Commentary:

;;; Code:

;; python-mode
(package-install-with-refresh 'python-mode)
(require 'python-mode)

(add-hook 'python-mode-hook
	  '(lambda ()
	    (define-key python-mode-map (kbd "\C-m") 'newline-and-indent)
	    (define-key python-mode-map (kbd "RET") 'newline-and-indent)
            (setq indent-tabs-mode nil)
                        (setq indent-level 4)
                        (setq python-indent 4)
                        (setq tab-width 4)))

;; py-autopep8
(package-install-with-refresh 'py-autopep8)
(require 'py-autopep8)

(add-hook 'before-save-hook 'py-autopep8-before-save)

;; virtualenv
;(package-install-with-refresh 'pyenv-mode)
;(pyenv-mode)

;; auto-completeが読み込まれている必要あり
;(require 'ac-python)
;(add-to-list 'ac-modes 'python-2-mode)

;;; 50-python.el ends here
