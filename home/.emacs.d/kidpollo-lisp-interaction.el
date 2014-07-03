;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Lisp interaction

;;;; Required packages

(package-require 'paredit)
(package-require 'rainbow-delimiters)

(require 'kidpollo-paredit)

;;;; Hooks

(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)
(add-hook 'emacs-lisp-mode-hook 'kidpollo/define-paredit-keys)
(add-hook 'emacs-lisp-mode-hook (lambda () (nlmap ",e" 'eval-defun)))

(provide 'kidpollo-lisp-interaction)
