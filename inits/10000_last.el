;; ----------------------------------------------------------------
;; flycheck
;; ----------------------------------------------------------------



;; ----------------------------------------------------------------
;; smartrep
;; ----------------------------------------------------------------
(require 'smartrep)
(smartrep-define-key
    org-mode-map "C-c" '(("C-n" . outline-next-visible-heading)
                         ("C-p" . outline-previous-visible-heading)
                         ("C-u" . outline-up-heading)
                         ("C-f" . org-forward-heading-same-level)
                         ("C-b" . org-backward-heading-same-level)))
