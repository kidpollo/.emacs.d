(require 'package)

(dolist (source '(("marmalade" . "http://marmalade-repo.org/packages/")
		  ("melpa" . "http://melpa.milkbox.net/packages/")))
  (add-to-list 'package-archives source t))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(let ((packages '(magit
                  maxframe
                  fuzzy
                  ;; Themes
                  tronesque-theme
                  jujube-theme
                  soothe-theme
                  ;; Miscelleaneous
                  apache-mode
		              dash-at-point
                  ag)))
  (dolist (package packages)
    (unless (package-installed-p package)
      (package-install package))))

(provide 'kidpollo-package)

; (defvar my-packages '(starter-kit
;                       starter-kit-lisp
;                       starter-kit-bindings
;                       starter-kit-eshell
;                       exec-path-from-shell
;                       rainbow-delimiters
;                       clojure-mode
;                       clojure-test-mode
;                       cider))
