;;; init-speedbar --- Initialize the Speedbar

;;; Commentary:
;;;
;;; Use sr-speecbar, because regualr speedbar is annoying on tiling
;;; window managers.

;;; Code:

(require-package 'sr-speedbar)


(global-set-key (kbd "C-x M-b") 'sr-speedbar-toggle)


(provide 'init-speedbar)
;;; init-speedbar ends here
