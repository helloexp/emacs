;; ----------------------------------------------------------------------------------------------------------------------------------------------------
;; org-mode setting
;; ----------------------------------------------------------------------------------------------------------------------------------------------------
(require 'org-capture)
(add-to-list 'auto-mode-alist '("\\.org$", org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cr" 'org-remember)
(define-key global-map "\C-cos" 'org-sort-entries)

(setq org-directroy "~/.org/")
(setq org-default-notes-file (concat (getenv "ORG_DEFAULT_NOTES_DIR") "todo.org" ))

(add-hook 'org-mode-hook 'turn-on-font-lock)  ;; org-modeのみでfont-lockを有効化

(setq org-startup-indented t)
(setq org-indent-mode t)
(setq org-indent-indentation-per-level 4)  ;; indent-modeでの階層レベル
(setq org-list-indent-offset 2)            ;; list(check-box)でのindent. base値2への加算値を記述. 2+2=4

(setq org-log-done 'time)
(setq org-deadline-warning-days 60) ;; deadline warning

(setq org-agenda-files "~/.org/agenda.org") ;; agenda file list

(setq org-todo-keywords '((type "Todo(t)" "Project(P)" "Waiting(w)" "Bug(b)" "|" "Done(d)" "Cancel(c)" "Paused(p)" "Iam(i)")))


;;
;; (org-remember-insinuate)
(setq org-remember-templates
      '(("Project" ?p "* Project %^{Des} %^g\nAdded:      %U \n%?"  (concat (getenv "ORG_DEFAULT_NOTES_DIR") "prjects.org")  "projects")
        ("Todo"    ?t "* Todo    %^{Des} %^g\nAdded:      %U \n%?"  (concat (getenv "ORG_DEFAULT_NOTES_DIR") "todo.org")     "next")
        ("Gathere" ?m "* Gathere %^{Desc} :memo: \nAdded: %U \n%?"  (concat (getenv "ORG_DEFAULT_NOTES_DIR") "todo.org")     "gather")
        ("iam"     ?i "* Iam     %^{Desc} %^g\nAdded:     %U \n%?"  (concat (getenv "ORG_DEFAULT_NOTES_DIR") "todo.org")     "iam")
        ))

;; priority
(setq org-highest-priority ?A)
(setq org-lowest-priority ?G)
(setq org-default-priority ?G)

;; priority color
(setq org-priority-faces '((?A . (:foreground "orange" :weight "bold"))
                           (?B . (:foreground "#44D"))
                           (?C . (:foreground "#44D"))
                           (?D . (:foreground "#4A4"))
                           (?E . (:foreground "#4A4"))
                           (?F . (:foreground "#888"))
                           (?G . (:foreground "#888"))))

(require 'org-habit)

;; --------------------------------------------------------------------------------------------------------------------------------
;;  org-capture
;; --------------------------------------------------------------------------------------------------------------------------------
;; Org-captureをC-c rで呼び出す。

(define-key global-map "\C-cr" 'org-capture)

;; Org-caputure
;; Org-mode version8.xから導入されたorg-rememberの高機能版

(when (require 'org-capture nil t)
  (setq org-capture-templates
        '(("n"  "Next"    entry (file+headline (concat (getenv "ORG_DEFAULT_NOTES_DIR") "todo.org")    "next")     "** Todo %^{Title} %^g\nAdded: %U\n%?")
          ("i"  "Iam"     entry (file+datetree (concat (getenv "ORG_DEFAULT_NOTES_DIR") "todo.org")    "iam")      "* Iam  %^{Title} %^g\nAdded: %U\n%?")
          ("I"  "Iterate" entry (file+headline (concat (getenv "ORG_DEFAULT_NOTES_DIR") "iterate.org") "todos")    "* Todo %^{Title} %^g\nAdded: %U\n%?")
          ))

  ;;
  (setq org-tag-alist '(("uniqlo" . ?u)
                        ("bb" . ?b)
                        ("sb" . ?s)
                        ("@office" . ?o)
                        ("@home" . ?h)
                        (:endgroup . nil)))


  (setq org-agenda-custom-commands
        '(("h" . "memo tag searches") ; describe prefix "h"
          ("hb" "Businnes Bank" tags "bb")
          ("hu" "Uniqlo" tags "uniqlo")
          ("ho" "office" tags "@office")
          ("hh" "home" tags "@home")
          ("hH" "Office and Home Lists"
           ((agenda)
            (tags-todo "@office")
            (tags-todo "@home")))

          ("hd" "Daily Action List"
           (
            (agenda "" ((org-agenda-ndays 1)
                        (org-agenda-sorting-strategy
                         (quote ((agenda time-up priority-down tag-up) )))
                        (org-deadline-warning-days 0)))))

          ("hw" "Weekly Action List"
           (
            (agenda "@home" ((org-agenda-ndays 7)
                        (org-agenda-sorting-strategy
                         (quote ((agenda time-up priority-down tag-up) )))
                        (org-deadline-warning-days 0)

                        )))))))
