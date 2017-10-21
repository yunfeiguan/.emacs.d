;;; init-haskell --- Set up Haskell editing

;;; Commentary:
;;;
;;; Just set up basic code style and inferior mode.

;;; Code:

(require 'inf-haskell)
(setq haskell-program-name "stack ghci")
(setq haskell-font-lock-symbols 'unicode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-unicode-input-method)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(set-variable 'haskell-indentation-cycle-warn nil)

(defun haskell-style ()
  "Sets the current buffer to use Haskell Style. Meant to be
  added to `haskell-mode-hook'"
  (interactive)
  (setq tab-width 4
        haskell-indentation-layout-offset 4
        haskell-indentation-left-offset 4
        haskell-indentation-ifte-offset 4))

(add-hook 'haskell-mode-hook 'haskell-style)

(provide 'init-haskell)
;;; init-haskell.el ends here
