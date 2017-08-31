;; --------------------------------------------------------------------------------------------
;; color-theme
;; --------------------------------------------------------------------------------------------
(require 'color-theme)
(color-theme-initialize)
(color-theme-billw)
;; (load-theme 'spacemacs-dark t)




;; --------------------------------------------------------------------------------------------
;; custom faces
;; --------------------------------------------------------------------------------------------
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
;; '(default ((t (:foreground "#888" :weight bold)))))



;; --------------------------------------------------------------------------------------------
;; font
;; --------------------------------------------------------------------------------------------
;;(set-default-font "VL Gothic-16")
;;(set-fontset-font (frame-parameter nil 'font)
;;                  'japanese-jisx0208
;;                  '("VL Gothic", "unicode-bmp"))

;;(set-default-font "DejaVu Sans Mono-16")
;;(set-fontset-font (frame-parameter nil 'font)
;;                  'japanese-jisx0208
;;                  '("Bitstream Vera Sans Mono", "unicode-bmp"))

(set-default-font "DejaVu Sans Mono-24")
;; (set-fontset-font (frame-parameter nil 'font)
;;                   ;; 'japanese-jisx0208
;;                   '("Dejavu Sans Mono" . "unicode-bmp"))




;; -------------------------------------------------------------------------------------------------------------------------------------------------
;;defaultのfontをutf-8nに
;; -------------------------------------------------------------------------------------------------------------------------------------------------
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)



;; ----------------------------------------------------------------------------------------------------------------------------------------------------
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
