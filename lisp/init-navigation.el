;;; init-navigation --- Getting around

;;; Commentary:
;;; Things are built around ido, mostly.

;;; Code:

(require 'init-elpa)
(require 'ido)
(require 'recentf)
(require-package 'ido-ubiquitous)
(require-package 'smex)
(require-package 'projectile)

(setq recentf-save-file (concat user-emacs-directory ".recentf"))
(recentf-mode 1)
(setq recentf-max-menu-items 40)

(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point nil)
(setq ido-auto-merge-work-directories-length -1)
(setq ido-use-virtual-buffers t)
(setq ido-create-new-buffer 'always)
(setq ido-default-buffer-method (quote selected-window))

(ido-ubiquitous-mode 1)

;; Shows a list of buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)

(setq smex-save-file (concat user-emacs-directory ".smex-items"))
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)

(projectile-global-mode)

;; Enable move point from window to window using Shift and the arrow keys
(windmove-default-keybindings)

(defun try-to-add-imenu ()
  "Add an imenu if we can."
  (condition-case nil (imenu-add-menubar-index) (error nil)))
(add-hook 'font-lock-mode-hook 'try-to-add-imenu)
(global-set-key [M-s-i] 'icicle-imenu)


(provide 'init-navigation)
;;; init-navigation.el ends here
