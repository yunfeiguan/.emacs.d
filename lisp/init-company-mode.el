;;; init-company-mode --- Set up universal completion
;;;
;;; Commentary:
;;;
;;; Just the basics.

;;; Code:

(require 'init-elpa)
(require-package 'company)
(require-package 'irony)
(require-package 'company-irony)
(require 'company)

(global-set-key "\t" 'company-complete-common)
(setq company-tooltip-align-annotations t)
(add-to-list 'company-backends 'company-irony)
(add-hook 'prog-mode-hook 'company-mode)

(provide 'init-company-mode)
;;; init-company-mode.el ends here
