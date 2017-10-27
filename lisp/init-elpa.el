;;; init-elap --- Set up the require-package macro and archives

;;; Commentary:
;;;
;;; This gives us the three major repositories and a require form that
;;; installs any package that we need.

;;; Code:
(require 'package)

(defun require-package (package)
  "Install given PACKAGE if it was not installed before."
  (if (package-installed-p package)
      t
    (progn
      (unless (assoc package package-archive-contents)
        (package-refresh-contents))
      (package-install package))))

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)

(provide 'init-elpa)
;;; init-elpa.el ends here
