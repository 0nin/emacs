;;; Company mode - intelligent completion
;;; https://github.com/company-mode/company-mode

;; (require 'company)
(require 'company-gtags)
(require 'company-semantic)
(require 'company-yasnippet)

;; (add-hook 'after-init-hook 'global-company-mode)

;; (add-hook 'after-init-hook 'global-company-mode)
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))
;; (delete 'company-semantic company-backends)
;; (define-key c-mode-map  [(tab)] 'company-complete)
;; (define-key c++-mode-map  [(tab)] 'company-complete)

;; (define-key c-mode-map  [C-tab] 'company-complete)
;; (define-key c++-mode-map  [C-tab] 'company-complete)

; load irony-mode
;;( add-to-list 'load-path (expand-file-name "~/.emacs.d/irony-mode/elisp/"))
(require 'irony)
; also enable ac plugin
;;(irony-enable 'ac)
; define a function to start irony mode for c/c++ modes
(defun my:irony-enable()
  (interactive)
  (when (member major-mode 'irony-known-modes)
    (irony-mode 1)))

(add-hook 'c++-mode-hook 'my:irony-enable)
(add-hook 'c-mode-hook 'my:irony-enable)

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(define-key irony-mode-map [C-tab] 'irony-completion-at-point-async)
;; (define-key irony-mode [C-tab] 'irony-completion-at-point-async)

(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(provide 'custom-company)
