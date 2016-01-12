;;; 00-keybind --- キーバインドの設定

;;; Commentary:

;;; Code:

;; C-h -> backspace
(keyboard-translate ?\C-h ?\C-?)

;; key-chord
(package-install-with-refresh 'key-chord)
(require 'key-chord)
(key-chord-mode 1)
(setq key-chord-one-key-delay 1.0)

;; at 50-gauche.el
;; \C-c g :: gauche interactive mode


;;; 00-keybind.el ends here
