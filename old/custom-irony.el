(require 'irony)


; define a function to start irony mode for c/c++ modes
(defun my:irony-enable()
  (interactive)
  (when (member major-mode 'irony-known-modes)
    (irony-mode 1)))

; also enable ac plugin
;; (irony-enable 'ac)
(require 'ac-irony)

(add-hook 'c++-mode-hook 'my:irony-enable)
(add-hook 'c-mode-hook 'my:irony-enable)

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

;; (define-key irony-mode-map [C-tab] 'irony-completion-at-point-async)
;; (define-key irony-mode [C-tab] 'irony-completion-at-point-async)

;; (defun my-irony-mode-hook ()
;;   (define-key irony-mode-map [remap completion-at-point]
;;     'irony-completion-at-point-async)
;;   (define-key irony-mode-map [remap complete-symbol]
;;     'irony-completion-at-point))

;; (add-hook 'irony-mode-hook 'my-irony-mode-hook)
;; (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

; start google-c-style with emacs
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

(provide 'custom-irony)

