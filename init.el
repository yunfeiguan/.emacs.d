;;; init --- Initialize emacs
;;; Commentary:
;;;
;;; Set up the most basic of basics then run all the specialized init files.

;;; Code:
;(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

; Ignore byte-compile warnings
(defvar warnings-to-ignore '())
(add-to-list 'warnings-to-ignore '(free-vars))
(add-to-list 'warnings-to-ignore '(nresolved))
(add-to-list 'warnings-to-ignore '(callargs))
(add-to-list 'warnings-to-ignore '(redefine))
(add-to-list 'warnings-to-ignore '(obsolete))
(add-to-list 'warnings-to-ignore '(noruntine))
(add-to-list 'warnings-to-ignore '(cl-functions))
(add-to-list 'warnings-to-ignore '(interactive-only))
(setq byte-compile-warnings warnings-to-ignore)

(require 'init-elpa)
(require 'init-ui)
(require 'init-evil)
(require 'init-editing)
(require 'init-navigation)
(require 'init-miscellaneous)
(require 'init-company-mode)
(require 'init-rust)
(require 'init-auctex)
(require 'init-haskell)
(require 'init-org)
(require 'init-w3m)
(require 'init-c)
(require 'init-imaxima)
(require 'init-mail)
(require 'init-slime)
(require 'init-geiser)
(require 'init-bbdb)
(require 'init-proof)

(provide 'init)
;;; init.el ends here
