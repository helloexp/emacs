;;; id-manager-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "id-manager" "id-manager.el" (22877 44098 0
;;;;;;  0))
;;; Generated autoloads from id-manager.el

(autoload 'idm-open-list-command "id-manager" "\
Load the id-password DB and open a list buffer.

\(fn &optional DB)" t nil)

(autoload 'idm-helm-command "id-manager" "\
Helm interface for id-manager.

INPUT-STRING is an optional input to start Helm with.  Useful for scripting interactions with OS launchers.

\(fn &optional INPUT-STRING)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; id-manager-autoloads.el ends here
