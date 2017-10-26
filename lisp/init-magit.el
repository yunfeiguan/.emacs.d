;;; init-magit --- Set up magit

;;; Commentary:
;;;
;;; This gives us magit and evil-mode adaptation.

;;; Code:
(require 'init-elpa)
(require 'init-evil)

(require-package 'magit)
(require-package 'evil-magit)

(require 'evil-magit)

(provide 'init-magit)
;;; init-magit.el ends here
