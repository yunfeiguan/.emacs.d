(add-to-list 'auto-mode-alist '("mutt-" . mail-mode))
(if (package-installed-p 'notmuch)
    (require 'notmuch))

(provide 'init-mail)
