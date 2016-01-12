;;; init.el --- 

;;; Commentary:

;;; Code:

;; http://d.hatena.ne.jp/tarao/20150221/1424518030
; server start for emacs-client
;(require 'server)
;(unless (server-running-p)
;  (server-start))

(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;;; el-get
; (el-get-bundle elpa:auto-complete)
; (el-get-bundle evil)


;; Package management
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(defun package-install-with-refresh (package)
  (unless (assq package package-alist)
    (package-refresh-contents))
  (unless (package-installed-p package)
    (package-install package)))

;; load-pathを追加する関数を定義
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
                         (normal-top-level-add-subdirs-to-load-path))))))

(add-to-load-path "site-lisp")

;; install init-loader
(package-install-with-refresh 'init-loader)
(require 'init-loader)

(setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/init")

;; よくわからんがいれとけってさ
(require 'generic-x)

;; backupfileを作らない
(setq make-backup-files nil)

;; 終了時必ず確認
(setq confirm-kill-emacs 'y-or-n-p)

;; cd
(cd "~")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3a0248176bf115cd53e0f15e30bb338b55e2a09f1f9508794fcd3c623725c8bd" "eb399cbd3ea4c93d9ab15b513fd6638e801600e13c8a70b56f38e609397a5eca" "9a3c51c59edfefd53e5de64c9da248c24b628d4e78cc808611abd15b3e58858f" "06a610f234492f78a6311304adffa54285b062b3859ad74eb13ca5d74119aef9" "de4f120a2119206e439b1f4a0e02666de755ef32a17c8512121b08e48e6aee08" "53707b9acb501b415a55c9c1662a89ad10aee35dbe0821359842be7b504c381a" "8e01b6a5f67815e538b02069767f6e54829a293032dec810e78d8bb25ef63af4" "6c77fd4c13c23ab899b0b14f54218cae119065e2c0ea3eb2d43f906445d918e3" "3460fc29604ece091d39e538985892b9db503b4cd3cad2e4ecaebe4231bfe430" "9bc1eec9b485726318efd9341df6da8b53fa684931d33beba57ed7207f2090d6" "8e997c790c6b22c091edb8a866f545857eaae227a0c41df402711f6ebc70326c" "6c57adb4d3da69cfb559e103e555905c9eec48616104e217502d0a372e63dcea" "2c73700ef9c2c3aacaf4b65a7751b8627b95a1fd8cebed8aa199f2afb089a85f" "91faf348ce7c8aa9ec8e2b3885394263da98ace3defb23f07e0ba0a76d427d46" "43b8d27eb5632d27d15ed7fc89af777ebc243253c7e80ca4e6399066bdbf8986" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; init.el ends here
