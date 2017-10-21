(require 'init-elpa)
(require 'saveplace)

(require-package 'rainbow-delimiters)
(require-package 'flycheck)

(set-language-environment "UTF-8") ; Unicode über alles
(show-paren-mode t) ; Show mactching parentheses
(global-hl-line-mode)
(setq-default case-fold-search nil)

(global-set-key (kbd "RET") 'newline-and-indent)

(add-hook 'after-init-hook #'global-flycheck-mode)

;; When you visit a file, point goes to the last place where it
;; was when you previously visited the same file.
;; http://www.emacswiki.org/emacs/SavePlace

(setq-default save-place t)
;; keep track of saved places in ~/.emacs.d/places
(setq save-place-file (concat user-emacs-directory "places"))

;; Emacs can automatically create backup files. This tells Emacs to
;; put all backups in ~/.emacs.d/backups. More info:
;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Backup-Files.html
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory
                                               "backups"))))
(setq auto-save-default nil)

(defun toggle-comment-on-line ()
  "Comment or uncomment current line."
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))
(global-set-key (kbd "C-;") 'toggle-comment-on-line)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

; auto-fill

(add-hook 'scheme-mode-hook 'turn-on-auto-fill)
(add-hook 'fundamental-mode-hook 'turn-on-auto-fill)
(add-hook 'perl-mode-hook 'turn-on-auto-fill)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'c-mode-hook 'turn-on-auto-fill)

; Flyspell

(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(add-hook 'text-mode-hook 'flyspell-mode)

; Override for markup languages

(add-hook 'html-mode-hook 'flyspell-prog-mode)
(add-hook 'tex-mode-hook 'flyspell-prog-mode)

(require 'whitespace)
(setq whitespace-style '(face trailing lines-tail empty space-before-tab))
(global-whitespace-mode)

(provide 'init-editing)
