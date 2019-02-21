;;; init-merlin --- Initialize O'CaML

;;; Commentary:
;;;
;;; Set up a reasonable environment.

;;; Code:

(require 'init-elpa)
(require-package 'tuareg)
(require-package 'merlin)
(require-package 'flycheck-ocaml)
(require 'tuareg)
(require 'camldebug)

(add-hook 'tuareg-mode-hook 'tuareg-imenu-set-imenu)

(setq auto-mode-alist
      (append '(("\\.ml[ily]?$" . tuareg-mode)
		("\\.topml$" . tuareg-mode))
	      auto-mode-alist))

(add-hook 'tuareg-mode-hook 'merlin-mode)
(add-hook 'caml-mode-hook 'merlin-mode)
(with-eval-after-load 'company
  (add-to-list 'company-backends 'merlin-company-backend)
  ;; Disable Merlin's own error checking
  (setq merlin-error-after-save nil)
  ;; Enable Flycheck checker
  (flycheck-ocaml-setup))
(add-hook 'merlin-mode-hook 'company-mode)

(provide 'init-ocaml)
;;; init-ocaml.el ends here
