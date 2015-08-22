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

(provide 'custom-company)
