;; Display file size/time in mode-line
(setq display-time-24hr-format t) 
(display-time-mode             t) 
(size-indication-mode          t) 

;; Clipboard settings
(setq x-select-enable-clipboard t)

(setq use-dialog-box     nil) 
(setq redisplay-dont-pause t) 

;; Disable backup/autosave files
(setq make-backup-files        nil)
(setq auto-save-default        nil)

(setq use-dialog-box     nil) 
(setq redisplay-dont-pause t)
(setq ring-bell-function 'ignore)

(setq speedbar-show-unknown-files t) ; show all files
(setq sr-speedbar-right-side nil) ; put on left side
(setq speedbar-use-images nil) ; use text for buttons
;; (setq sr-speedbar-auto-refresh nil)

;; Display the name of the current buffer in the title bar
(setq frame-title-format "GNU Emacs: %b")

;; Show-paren-mode settings
(show-paren-mode t) ;; включить выделение выражений между {},[],()
(setq show-paren-style 'expression) ;; выделить цветом выражения между {},[],()

(provide 'custom-global)
