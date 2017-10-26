;;; init-mail --- Mail stuff

;;; Commentary:
;;;
;;; Edit mutt messages in mail-mode and load notmuch if available.

;;; Code:

(add-to-list 'auto-mode-alist '("mutt-" . mail-mode))
(if (locate-library "notmuch" nil nil nil)
    (require 'notmuch))

(provide 'init-mail)
;;; init-mail.el ends here
