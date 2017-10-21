; Org Mode

(eval-after-load "org"
  '(progn
     (if (assoc "\\.pdf\\'" org-file-apps)
         (setcdr (assoc "\\.pdf\\'" org-file-apps) "evince %s")
       (add-to-list 'org-file-apps '("\\.pdf\\'" . "evince %s") t))
     (if (assoc "\\.djvu\\'" org-file-apps)
         (setcdr (assoc "\\.djvu\\'" org-file-apps) "evince %s")
       (add-to-list 'org-file-apps '("\\.djvu\\'" . "evince %s") t))
"\\.x?html?\\'"
     (if (assoc "\\.x?html?\\'" org-file-apps)
         (setcdr (assoc "\\.x?html?\\'" org-file-apps)
                 '(w3m-find-file file))
       (add-to-list 'org-file-apps '("\\.x?html?\\'" .
                                     (w3m-find-file file)) t))))

(add-to-list 'auto-mode-alist '("\\.\\(org\\  |org_archive\\|txt\\)$" .
                                org-mode))
(setq org-journal-dir "~/org/journal")
(setq org-startup-indented t)
(require 'org-install)
(require 'org-habit)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cj" 'org-journal-new-entry)
(setq org-directory "~/org")
(setq org-mobile-directory "/home/azureorg/sync")
(add-hook 'org-mobile 'org-mobile-post-push-hook
          (lambda () (shell-command "chmod -R g+rw /home/azureorg/sync")))
(setq org-agenda-files '("Things.org"))
(setq org-log-done 'time)
(setq org-completion-use-ido t)
(setq org-src-fontify-natively t)
(setq org-footnote-auto-adjust t)
(setq org-format-latex-options (plist-put org-format-latex-options :scale 2.2))

(setq org-confirm-babel-evaluate nil
      org-src-fontify-natively t
      org-src-tab-acts-natively t)

(provide 'init-org)
