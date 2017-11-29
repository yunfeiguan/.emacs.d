;;; init-ui --- Follow my idiosyncratic tastes

;;; Commentary:
;;; Some combination of setting up colors, fonts, and mouse behavior.
;;; Also remove UI elements I don't want.

;;; Code:
(require 'init-elpa)

(require-package 'color-theme)
;(require-package 'base16-theme)

(color-theme-initialize)
(color-theme-renegade)

(setq inihibit-startup-message t)

(scroll-bar-mode -1) ; I hate scroll bars
(tool-bar-mode -1) ; And I hate tool bars!
(menu-bar-mode -1) ; And I hate menu bars!
(setq scroll-step 1)

(setq frame-background-mode 'dark)
(transient-mark-mode t) ; I like seeing the mark
(column-number-mode t) ; And column numbers

(setq mouse-yank-at-point t)
(global-set-key [mouse-2] 'mouse-yank-primary)
(global-set-key [right-fringe mouse-2] 'mouse-yank-primary)
(global-set-key [left-fringt mouse-2] 'mouse-yank-primary)
(setq x-select-enable-clipboard t)
(setq x-select-enable-primary nil)

(blink-cursor-mode)

;(load-theme 'base16-irblack t)
(global-font-lock-mode 1)

(provide 'init-ui)
;;; init-ui.el ends here
