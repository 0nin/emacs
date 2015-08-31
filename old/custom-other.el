;; Dired
(require 'dired)
(setq dired-recursive-deletes 'top)
(require 'iedit)
(global-set-key (kbd "C-c ;") 'iedit-mode)

(provide 'custom-other)
