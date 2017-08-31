;; hide startup
(setq inhibit-startup-message t)

;; hide menu, tool and scroll bars
(menu-bar-mode 1)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; show line and column number on modeline
(line-number-mode 1)
(column-number-mode 1)

;; inteructive to y or n
(defalias 'yes-or-no-p 'y-or-n-p)

;; no dialog box
(setq user-dialog-box nil)

;; vie time on modeline
(display-time)

;; 時刻表示の左隣に日付を追加。
(setq display-time-kawakami-form t)

;; 24 時間制
(setq display-time-24hr-format t)
