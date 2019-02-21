;;; init-c --- Initialize C-like languages

;;; Commentary:
;;;
;;; Set up a reasonable indent style and source navigation.

;;; Code:

(require 'init-elpa)
(require-package 'cpputils-cmake)
(require 'cpputils-cmake)
(require-package 'irony)
(require-package 'rtags)
(require-package 'company-rtags)
(require-package 'flycheck-irony)
(require-package 'flycheck)
(require 'cc-mode)

; Formatting

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

; Irony/Flycheck

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

; cscope (Redundant?)

(require 'xcscope)

; Folding!

(add-hook 'c-mode-common-hook 'hs-minor-mode)

; rtags

(setq rtags-completions-enabled t)
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-rtags))
(rtags-enable-standard-keybindings)

(provide 'init-c)
;;; init-c.el ends here
