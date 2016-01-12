;;; 20-evil.el --- about evil

;;; Commentary:

;;; Code:

;; install evil
(package-install-with-refresh 'evil)
;; enable evil
(require 'evil)
(evil-mode 1)
(require 'evil-mode-line)

;;Exit insert mode by pressing j and then j quickly
(setq key-chord-two-keys-delay 2.0)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-mode 1)

(setq ;evil-default-cursor 'hbar'
      evil-normal-state-cursor '("#008000") ;"darkolivegreen")
      evil-insert-state-cursor '("#800000" (bar . 2)))
(blink-cursor-mode -1)

;; ターミナルでもカーソルが
(package-install-with-refresh 'evil-terminal-cursor-changer)
(require 'evil-terminal-cursor-changer)

;; evilで直前のコマンドが貼り付けでないときは、\C-pや\C-nで移動
(defadvice evil-paste-pop (around evil-paste-or-move-line activate)
  ;; evil-paste-popできなかったらprevious-lineする
  "If there is no just-yanked stretch of killed text, just move
to previous line."
  (condition-case err
      ad-do-it
    (error (if (eq this-command 'evil-paste-pop)
               (call-interactively 'previous-line)
             (signal (car err) (cdr err))))))
(defadvice evil-paste-pop-next (around evil-paste-or-move-line activate)
  ;; evil-paste-pop-nextできなかったらnext-lineする
  "If there is no just-yanked stretch of killed text, just move
to next line."
  (condition-case err
      ad-do-it
    (error (if (eq this-command 'evil-paste-pop-next)
               (call-interactively 'next-line)
             (signal (car err) (cdr err))))))

;;; 20-evil.el ends here
