(require 'dired)
;;(require 'color-moccur)
;;(require 'sorter)

;; sort, dir first
(setq ls-lisp-dirs-first t)

;; alternate enable for no new buffer when open something
(put 'dired-find-alternate-file 'disabled nil)

;; file/dirlist 出力形式
;; diredは、裏でlsが動いてるらしい
(setq dired-listing-switches "-lhA")

;; 再帰的にdirectory copy
(setq dired-recursive-copies 'always)

;; 再帰的 delete directory
;;(setq dired-recursive-deletes 'always)

;; ファイルなら別バッファで、ディレクトリなら同じバッファで開く
(defun dired-open-in-accordance-with-situation ()
  (interactive)
  (let ((file (dired-get-filename)))
    (cond ((file-directory-p file)
           (dired-find-alternate-file))
          ((file-regular-p file)
           (dired-find-file)))))


;; RET 標準の dired-find-file では dired バッファが複数作られるので
;; dired-find-alternate-file を代わりに使う
(define-key dired-mode-map (kbd "RET") 'dired-open-in-accordance-with-situation)
(define-key dired-mode-map (kbd "a") 'dired-find-file)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)
(define-key dired-mode-map "c" (lambda () (interactive) (find-alternate-file "..")))
