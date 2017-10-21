;;; init-imaxima --- Set up iMaxima

;;; Commentary:
;;;
;;; Just make things larger.

;;; Code:

(if (and (package-installed-p 'imaxima)
	 (apckage-installed-p 'imath-mode))
    (progn
      (require 'imaxima)
      (require 'imath-mode)
      (setq imaxima-use-maxima-mode-flag t)
      (setq imaxima-fnt-size "Huge")))

(provide 'init-imaxima)
;;; init-imaxima.el ends here
