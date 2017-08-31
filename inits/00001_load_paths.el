;; 環境変数
(load-file (concat user-emacs-directory "~/.emacs.d/shellenv.el"))

(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(add-to-list 'load-path "~/.emacs.d/elpa/")
(add-to-list 'load-path "~/.emacs.d/elisp/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/color-theme/")
(add-to-list 'load-path "~/.emacs.d/elpa/tabbar/")
(require 'auto-install)
