;; 自動でファイルを挿入する
(auto-insert-mode t)

;; 対応する括弧を光らせる
(show-paren-mode 1)

;; gyo-matu mo sakujo
(setq kill-whole-line t)

;; 折り返し表示off
(set-default 'truncate-lines t)

;; 行末改行を削除
(add-hook 'before-save-hook 'delete-trailing-whitespace)




(global-set-key "\C-h" 'delete-backward-char)
(define-key global-map (kbd "\C-x M-g") 'goto-line)

;; tyokuzen no 1tango wo sakujo
(global-set-key "\M-h" 'backward-kill-word)

;; comment out
(global-set-key "\C-c;" 'comment-region)

;; delete comment
(global-set-key "\C-c:" 'uncomment-region)




;; silent beep
(setq ring-bell-function 'ignore)




;; auto-save
(setq auto-save-default nil)
