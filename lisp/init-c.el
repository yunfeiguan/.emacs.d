(setq c-ignore-auto-fill '(string cpp))
(setq c-max-one-liner-length 72)
(setq c-report-syntactic-errors t)
(setq c-block-comment-prefix "  ")

(c-add-style "ceph-style"
	     '("stroustrup"
	       (indent-tabs-mode . t) ; use spaces rather than tabs
	       (c-basic-offset . 2) ; indent by four spaces
	       (c-offsets-alist . ((innamespace . [0])))))


(setq c-default-style '((c-mode . "linux")
			 (c++-mode . "ceph-style")
			 (java-mode . "java")
			 (awk-mode . "awk")
			 (other . "linux")))
(setq c-tab-always-indent t)
(setq indent-tabs-mode t)

(require 'xcscope)

(provide 'init-c)
