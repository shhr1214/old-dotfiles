;;; 00-window.el --- 外見に関する設定

;;; Commentary:

;;; Code:

;; 起動時の大きさ
(if (boundp 'window-system)
    (setq default-frame-alist
      (append (list
           '(width  . 100)
           '(height . 38
           )
          default-frame-alist))))
(setq initial-frame-alist default-frame-alist)

;; 初期画面非表示
(setq inhibit-startup-message t)

;; フルスクリーン化
(global-set-key (kbd "<M-return>") 'toggle-frame-fullscreen)

;; powerline
(package-install-with-refresh 'powerline)

;; ハイライト関係
;(global-hl-line-mode t)
;(custom-set-faces
;'(hl-line ((t (:background "color-240"))))
;)

(show-paren-mode t)
(setq show-paren-style 'parenthesis)


;; fileのフルパスをタイトルに表示
(setq frame-title-format
  (format "%%f - Emacs@%s" (system-name)))

;; 行表示
;;(global-linum-mode t)

;; メニュー・ツールバー削除
(tool-bar-mode 0)
(menu-bar-mode 0)
(if (display-graphic-p)
    (progn
      (tool-bar-mode -1)
            (scroll-bar-mode -1)))

;; クリップボードの有効化
(setq x-select-enable-clipboard t)

;; tab = 4
(setq-default tab-width 4 indent-tabs-mode nil)

;; mode-lineに関する設定
;; 列数も表示
(column-number-mode t)
;; 日時表示
(setq display-time-day-and-date t)
(setq display-time-string-forms
  '((format "%s/%s(%s)%s:%s"
     month day dayname
     24-hours minutes)))

(display-time-mode t)

;; font
;; charset の判定する際に cp932 を sjis より優先順位を上げておくことで
;; 機種依存文字を表示できるようにする (charset と coding-system の優先度設定)。
(set-charset-priority 'ascii 'japanese-jisx0208 'latin-jisx0201
                     'katakana-jisx0201 'iso-8859-1 'cp1252 'unicode)
(set-coding-system-priority 'utf-8 'euc-jp 'iso-2022-jp 'cp932); デフォルトの文字コード
(set-default-coding-systems 'utf-8-unix)

;; テキストファイル／新規バッファの文字コード
(prefer-coding-system 'utf-8-unix)

;; ファイル名の文字コード
(set-file-name-coding-system 'utf-8-unix)

;; キーボード入力の文字コード
(set-keyboard-coding-system 'utf-8-unix)

;; サブプロセスのデフォルト文字コード
(setq default-process-coding-system '(undecided-dos . utf-8-unix))

;; 全角スペース タブ表示
(setq whitespace-style
      '(tabs tab-mark spaces space-mark))
(setq whitespace-space-regexp "\\(\x3000+\\)")
(setq whitespace-display-mappings
      '((space-mark ?\x3000 [?\□])
        (tab-mark   ?\t   [?\xBB ?\t])
        ))
(require 'whitespace)
(global-whitespace-mode 1)
(set-face-foreground 'whitespace-space "LightSlateGray")
(set-face-background 'whitespace-space "DarkSlateGray")
(set-face-foreground 'whitespace-tab "LightSlateGray")
(set-face-background 'whitespace-tab "DarkSlateGray")


;; Cocoa Emacs
(if (and (eq system-type 'darwin) (eq window-system 'ns))
    (progn ;;;;; Cocoa Emacs固有の設定を書く
      (set-frame-font "Myrica M-14")
      ))
;; Windows 7
(if (eq system-type 'windows-nt)
    (progn ;;;;;; Windows上のEmacs固有の設定
        (set-frame-font "Myrica M-12")
  (set-face-bold 'bold nil)
      ))

;;; 00-window.el ends here
