;;; init-slime --- Use Slime

;;; Commentary:
;;; Set it up to use SBCL;

;;; Code:
(require-package 'slime)
(require-package 'slime-company)

(setq inferior-lisp-program "/usr/bin/sbcl")
(slime-setup)

(provide 'init-slime)
;;; init-slime.el ends here
