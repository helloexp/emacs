;; ----------------------------------------------------------------
;; バックアップファイルをすべて、~/.emacs.d/bak内へ保存
;; ----------------------------------------------------------------
(setq make-backup-file t)
(setq backup-directory-alist
      (cons (cons ".*" (expand-file-name "~/.emacs.d/bak"))
            backup-directory-alist))
