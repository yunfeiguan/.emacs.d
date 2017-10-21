;;; init-evil --- Give us Evil Mode

;;; Commentary:
;;; Emacs isn't very usable without it.

;;; Code:

(require 'init-elpa)
(require-package 'undo-tree)
(require-package 'evil)
(require-package 'evil-magit)

(setq evil-want-C-i-jump nil)
(evil-mode 1)

(provide 'init-evil)
;;; init-evil.el ends here
