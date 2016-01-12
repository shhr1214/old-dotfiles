;;;; 50-haskell.el --- Haskellに関する設定

;;; Commentary:

;;; Code:
(package-install-with-refresh 'haskell-mode)
;; (package-install-with-refresh 'haskell-cabal)

(autoload 'haskell-mode "haskell-mode" nil t)
(autoload 'haskell-cabal "haskell-cabal" nil t)

(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.lhs$" . literate-haskell-mode))
(add-to-list 'auto-mode-alist '("\\.cabal\\'" . haskell-cabal-mode))

;;; 50-haskell.el ends here
