;;; init-c --- Initialize C-like languages

;;; Commentary:
;;;
;;; Set up a reasonable indent style and source navigation.

;;; Code:

(require 'init-elpa)
(require-package 'ggtags)
(require-package 'irony)
(require-package 'flycheck-irony)
(require-package 'flycheck)
(require 'cc-mode)

(setq c-ignore-auto-fill '(string cpp))
(setq c-max-one-liner-length 72)
(setq c-report-syntactic-errors t)
(setq c-block-comment-prefix "  ")

(c-add-style "ceph-style"
	     '("stroustrup"
	       (indent-tabs-mode . nil) ; use spaces rather than tabs
	       (c-basic-offset . 2) ; indent by two spaces
	       (c-offsets-alist . ((innamespace . [0])))))


(setq c-default-style '((c-mode . "linux")
			 (c++-mode . "ceph-style")
			 (java-mode . "java")
			 (awk-mode . "awk")
			 (other . "linux")))
(setq c-tab-always-indent t)
(setq indent-tabs-mode nil)

(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
              (ggtags-mode 1))))

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'c++-mode-hook
	  (lambda ()
	    (setq irony-additional-clang-options (quote ("-std=c++14")))))

(add-hook 'c-mode-hook
	  (lambda ()
	    (setq irony-additional-clang-options (quote ("-std=c11")))))

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(add-hook 'flycheck-mode-hook #'flycheck-irony-setup)

(require 'xcscope)

(provide 'init-c)
;;; init-c.el ends here
