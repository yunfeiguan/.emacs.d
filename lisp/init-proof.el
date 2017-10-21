;;; init-proof.el --- ProofGeneral

;;; Commentary:
;;; Use ProofGeneral if it's available.
;;; And a pox on Makarius.

;;; Code:

(setq load-path (append load-path '("/usr/share/emacs/site-lisp/ProofGeneral/generic")))
(if (package-installed-p 'proof-site)
    (require 'proof-site))

(provide 'init-proof)
;;; init-proof.el ends here
