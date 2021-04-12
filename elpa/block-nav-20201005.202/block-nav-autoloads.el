;;; block-nav-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "block-nav" "block-nav.el" (0 0 0 0))
;;; Generated autoloads from block-nav.el

(autoload 'block-nav-next-block "block-nav" "\
Move the cursor to the next line that shares the same level of indentation.

\(fn)" t nil)

(autoload 'block-nav-previous-block "block-nav" "\
Move the cursor to previous line that shares the same level of indentation.

\(fn)" t nil)

(autoload 'block-nav-next-indentation-level "block-nav" "\
Move the cursor to the next line that has a deeper level of indentation.

\(fn)" t nil)

(autoload 'block-nav-previous-indentation-level "block-nav" "\
Move the cursor to the previous line that has shallower level of indentation.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "block-nav" '("block-nav-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; block-nav-autoloads.el ends here
