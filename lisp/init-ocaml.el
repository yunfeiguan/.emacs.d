;;; init-merlin --- Initialize O'CaML

;;; Commentary:
;;;
;;; Set up a reasonable environment.

;;; Code:

(require 'init-elpa)
(require-package 'tuareg)
(require 'tuareg)
(require 'camldebug)


(add-hook 'tuareg-mode-hook 'tuareg-imenu-set-imenu)

(setq auto-mode-alist
      (append '(("\\.ml[ily]?$" . tuareg-mode)
		("\\.topml$" . tuareg-mode))
	      auto-mode-alist))


(when (require 'merlin '() t)
  (add-hook 'tuareg-mode-hook 'merlin-mode)
  (add-hook 'caml-mode-hook 'merlin-mode))

(provide 'init-ocaml)
;;; init-ocaml.el ends here
