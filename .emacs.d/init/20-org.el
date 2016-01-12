;;;; 20-org.el --- Haskellに関する設定

;;; Commentary:

;;; Code:
(package-install-with-refresh 'org)
(require 'org)

(package-install-with-refresh 'ox-reveal)
(require 'ox-reveal)
;(load-library "ox-reveal")

;(setq org-reveal-root "~/.emacs.d/org-mode/reveal.js-master/js/reveal.js")

;; (package-install-with-refresh 'haskell-cabal)

;;; 20-org.el ends here
