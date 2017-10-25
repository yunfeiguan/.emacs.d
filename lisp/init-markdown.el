;;; init-markdown --- Bring in markdown mode

;;; Commentary:

;; Pull in and configure markdown-mode

;;; Code:

(require-package 'markdown-mode)

(add-hook 'markdown-mode-hook
	  (lambda ()
	    (when buffer-file-name
	      (add-hook 'after-save-hook
			'check-parens
			nil t))))

(provide 'init-markdown)
;;; init-markdown.el ends here
