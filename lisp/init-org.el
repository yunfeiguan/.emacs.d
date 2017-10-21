;;; init-org --- Have you given your life over to Org Mode?

;;; Commentary:
;;; The killer app of the Emacs operating system

;;; Code:

(require 'org)
(require 'org-install)
(require 'org-habit)

(if (assoc "\\.pdf\\'" org-file-apps)
    (setcdr (assoc "\\.pdf\\'" org-file-apps) "evince %s")
  (add-to-list 'org-file-apps '("\\.pdf\\'" . "evince %s") t))
(if (assoc "\\.djvu\\'" org-file-apps)
    (setcdr (assoc "\\.djvu\\'" org-file-apps) "evince %s")
  (add-to-list 'org-file-apps '("\\.djvu\\'" . "evince %s") t))
(if (assoc "\\.x?html?\\'" org-file-apps)
    (setcdr (assoc "\\.x?html?\\'" org-file-apps)
	    '(w3m-find-file file))
  (add-to-list 'org-file-apps '("\\.x?html?\\'" .
				(w3m-find-file file)) t))

(add-to-list 'auto-mode-alist '("\\.\\(org\\  |org_archive\\|txt\\)$" .
                                org-mode))
(setq org-journal-dir "~/org/journal")
(setq org-startup-indented t)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cj" 'org-journal-new-entry)
(setq org-directory "~/org")
(setq org-agenda-files '("Things.org"))
(setq org-log-done 'time)
(setq org-src-fontify-natively t)
(setq org-footnote-auto-adjust t)
(setq org-format-latex-options (plist-put org-format-latex-options :scale 2.2))

(setq org-confirm-babel-evaluate nil
      org-src-fontify-natively t
      org-src-tab-acts-natively t)

(provide 'init-org)
;;; init-org.el ends here
