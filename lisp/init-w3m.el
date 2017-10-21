(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
;; optional keyboard short-cut
(global-set-key "\C-xm" 'browse-url-at-point)
(setq browse-url-browser-function 'w3m-browse-url)
(setq w3m-default-display-inline-images t)
(setq w3m-image-default-background "white")

(provide 'init-w3m)
