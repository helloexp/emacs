;; ----------------------------------------------------------------
;; ruby-mode setting
;; ----------------------------------------------------------------
(defun ruby-custom()
  "ruby-mode-hook"
  (set (make-local-variable 'ruby-insert-encoding-magic-comment) nil)
  (set (make-local-variable 'ruby-indent-level) 2)
  (set (make-local-variable 'ruby-indent-tabs-mode) nil))

(add-hook 'ruby-mode-hook
  '(lambda() (ruby-custom)))


;; ----------------------------------------------------------------
;; testing , code folding
;; ----------------------------------------------------------------
(add-hook 'ruby-mode-hook
          '(lambda()
             (hs-minor-mode 1)))


(let ((ruby-mode-hs-info
       '(ruby-mode
          "class\\|module\\|def\\|if\\|unless\\|case\\|while\\|until\\|for\\|begin\\|do"
          "end"
          "#"
          ruby-move-to-block
          nil)))
  (if (not (member ruby-mode-hs-info hs-special-modes-alist))
      (setq hs-special-modes-alist
            (cons ruby-mode-hs-info hs-special-modes-alist))))


;; flycheck
(add-hook 'ruby-mode-hook
          '(lambda ()
             (setq flycheck-checker 'ruby-rubocop)
             (flycheck-mode 1)))
