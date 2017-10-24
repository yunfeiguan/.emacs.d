; init-auctex --- Set up AucTeX

;;; Commentary:
;;;
;;; Just set up a few basics.

;;; Code:

(require-package 'auctex)
(require-package 'auctex-latexmk)
(require 'tex)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-clean-confirm nil)
(setq TeX-newline-function 'newline-and-indent)
(setq TeX-PDF-mode t)

(provide 'init-auctex)
;;; init-auctex.el ends here
