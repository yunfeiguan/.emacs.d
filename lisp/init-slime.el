(require-package 'slime)
(require-package 'slime-company)

(setq inferior-lisp-program "/usr/bin/sbcl")
(slime-setup)

(provide 'init-slime)
