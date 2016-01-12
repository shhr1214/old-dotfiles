;;;; 50-clojure.el --- Clojurelに関する設定

;;; Commentary:

;;; Code:
(package-install-with-refresh 'clojure-mode)

;; cider
(package-install-with-refresh 'cider)

(add-hook 'clojure-mode-hook 'cider-mode)

;; mini bufferに関数の引数を表示させる
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

;; 'C-x b' した時に *nrepl-connection* と *nrepl-server* のbufferを一覧に表示しない
(setq nrepl-hide-special-buffers t)

;; RELPのbuffer名を 'project名:nREPLのport番号' と表示する
;; project名は project.clj で defproject した名前
(setq nrepl-buffer-name-show-port t)

;; ac-cider
;(package-install-with-refresh 'ac-cider)
;
;
;(autoload 'ac-cider "ac-cider" nil t)
;(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
;(add-hook 'cider-mode-hook 'ac-cider-setup)
;(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
;(eval-after-load "auto-complete"
;  '(progn
;     (add-to-list 'ac-modes 'cider-mode)
;     (add-to-list 'ac-modes 'cider-repl-mode)))


;; others
(package-install-with-refresh 'clojure-cheatsheet)
(package-install-with-refresh 'smartparens)
(package-install-with-refresh 'rainbow-delimiters)


;;; 50-clojure.el ends here
