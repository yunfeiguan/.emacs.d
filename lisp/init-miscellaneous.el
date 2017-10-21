;;; init-miscellaneous --- Random stuff

;;; Commentary: Really, a random grab-bag.  Mostly turning off some of
;;; the more annoying safeties.

;;; Code:

;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; No need for ~ files when editing
(setq create-lockfiles nil)
(setq confirm-nonexistent-file-or-buffer nil)
(setq kill-buffer-query-functions
      (remq 'process-kill-buffer-query-function
	    kill-buffer-query-functions))

(require 'midnight)
(setq clean-buffer-list-delay-general 1)

(provide 'init-miscellaneous)
;;; init-miscellaneous ends here
