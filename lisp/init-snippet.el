;;; init-snippet --- Snippets!

;;; Commentary:
;;;
;;; Useful bits of code.

;;; Code:

(require-package 'yasnippet)
(require-package 'yasnippet-snippets)

(require 'init-elpa)
(require 'saveplace)

(provide 'init-snippet)

(global-set-key (kbd "<C-tab>") 'yas-expand-from-trigger-key)
;;; init-snippet.el ends here
