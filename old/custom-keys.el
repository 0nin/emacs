;; Easy transition between buffers: M-arrow-keys
(if (equal nil (equal major-mode 'org-mode))
    (windmove-default-keybindings 'meta))

;; Commands:
;; Undo
(global-set-key (kbd "M-z") 'undo)
;; Keyboard quit
(global-set-key (kbd "M-q") 'keyboard-quit)

;; Add comment according major mode
(global-set-key (kbd "M-/") 'comment-dwim)
;; Set mark command
(global-set-key (kbd "M-m") 'set-mark-command)
;; Back to indentation
(global-set-key (kbd "M-\\") 'back-to-indentation)

;; Add comment according major mode
(global-set-key (kbd "M-/") 'comment-dwim)
;; Set mark command
(global-set-key (kbd "M-m") 'set-mark-command)
;; Back to indentation
(global-set-key (kbd "M-\\") 'back-to-indentation)

(global-set-key (kbd "<f2>") 'bs-show)
(global-set-key (kbd "<f7>") 'kmacro-start-macro)
(global-set-key (kbd "<f8>") 'kmacro-end-macro)
(global-set-key (kbd "<f9>") 'kmacro-call-macro)
(global-set-key (kbd "<f11>") 'ido-dired)
(global-set-key (kbd "<f12>") 'sr-speedbar-toggle)

(provide 'custom-keys)
