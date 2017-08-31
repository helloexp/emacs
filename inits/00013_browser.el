;; default browser setting

(setq browse-url-browser-function 'browse-url-default-macosx-browser)
;; (setq browse-url-browser-function 'browse-url-generic)
(setq browse-url-generic-program
      (if (file-exists-p "/Applications/Waterfox.app/Contents/MacOS/waterfox")
          "/Applications/Waterfox.app/Contents/MacOS/waterfox"))
