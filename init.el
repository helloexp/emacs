(package-initialize)
(init-loader-load)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-disabled-checkers (quote (javascript-jshint javascript-jscs)))
 '(helm-delete-minibuffer-contents-from-point t)
 '(helm-mini-default-sources
   (quote
    (helm-source-buffers-list helm-source-files-in-current-dir helm-source-ls-git helm-source-recentf)))
 '(helm-truncate-lines t t)
 '(package-selected-packages
   (quote
    (id-manager elscreen-separate-buffer-list elscreen helm-flycheck smartrep package-build quelpa init-loader vue-mode go-mode slim-mode spaceline powerline spacemacs-theme tabbar real-auto-save projectile-rails minimap helm-migemo helm-ls-git helm-gtags helm-grepint helm-git-grep helm-git helm-ag-r helm-ag exec-path-from-shell avy-migemo auto-save-buffers-enhanced auto-install ag ace-isearch))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-delimiter-face ((default (:inherit font-lock-comment-face :foreground "darkgreen" :weight bold)) (((class color) (min-colors 16)) nil)))
 '(font-lock-comment-face ((t (:foreground "darkgreen" :weight bold))))
 '(font-lock-function-name-face ((t (:foreground "#A33" :weight bold :underline nil))))
 '(font-lock-keyword-face ((t (:foreground "#55B" :weight bold))))
 '(font-lock-negation-char-face ((t (:foreground "#888" :weight bold))))
 '(font-lock-string-face ((t (:foreground "#A8A8A8" :underline nil))))
 '(font-lock-warning-face ((t (:foreground "#888")))))


(setq line-number-display-limit large-file-warning-threshold)
(setq line-number-display-limit-width 200)

(defun my--is-file-large ()
  "If buffer too large and my cause performance issue."
  (< large-file-warning-threshold (buffer-size)))

(define-derived-mode my-large-file-mode fundamental-mode "LargeFile"
  "Fixes performance issues in Emacs for large files."
  ;; (setq buffer-read-only t)
  (setq bidi-display-reordering nil)
  (jit-lock-mode nil)
  (buffer-disable-undo)
  (set (make-variable-buffer-local 'global-hl-line-mode) nil)
  (set (make-variable-buffer-local 'line-number-mode) nil)
  (set (make-variable-buffer-local 'column-number-mode) nil) )

(add-to-list 'magic-mode-alist (cons #'my--is-file-large #'my-large-file-mode))
