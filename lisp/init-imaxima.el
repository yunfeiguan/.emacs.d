;;; init-imaxima --- Set up iMaxima

;;; Commentary:
;;;
;;; Just make things larger.

;;; Code:

(if (and (locate-library "imaxima" nil nil nil)
	 (locate-library "imath" nil nil nil))
    (progn
      (require 'imaxima)
      (require 'imath)
      (setq imaxima-use-maxima-mode-flag t)
      (setq imaxima-fnt-size "Huge")))

(provide 'init-imaxima)
;;; init-imaxima.el ends here
