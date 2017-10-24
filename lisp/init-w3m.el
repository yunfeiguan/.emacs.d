;;; init-w3m --- Set up Emacs to use w3m

;;; Commentary:
;;; It's a fine browser and it runs fine in Emacs.

;;; Code:
(require-package 'w3m)
(setq browse-url-browser-function 'w3m-browse-url)
;; optional keyboard short-cut
(global-set-key "\C-xm" 'browse-url-at-point)
(setq browse-url-browser-function 'w3m-browse-url)
(setq w3m-default-display-inline-images t)
(setq w3m-image-default-background "white")

(provide 'init-w3m)
;;; init-w3m.el ends here
