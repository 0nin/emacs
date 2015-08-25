(setenv "ERGOEMACS_KEYBOARD_LAYOUT" "us")
(load-file "~/.emacs.d/ergoemacs/site-lisp/site-start.el")

;; Add comment according major mode
(global-set-key (kbd "M-/") 'comment-dwim)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.mmf\\'" . asm-mode))
(setq w32-pipe-read-delay 0)



(package-initialize)
(add-to-list 'load-path "~/.emacs.d/custom")

(require 'custom-package)
(require 'custom-global)
(require 'custom-bookmark)
(require 'cc-mode)
;; (require 'company)
(require 'custom-ggtags)
;; (require 'custom-company)
;; (require 'custom-company-c-headers)
(require 'custom-autocomplete)
;; (require 'custom-autocomplete-c-headers)
(require 'custom-irony)
;; (require 'custom-semantic)
;; (require 'custom-flymake-google)
(require 'custom-flycheck)
(require 'custom-keys)
(require 'custom-yasnippet)
(require 'custom-imenu)
(require 'custom-other)
(require 'rtf-mode)
(require 'custom-org)
(require 'custom-switch)
(require 'color-theme-mac-classic)
(color-theme-mac-classic)
(nyan-mode)
;; (require 'eide)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(display-time-mode t)
 '(ecb-options-version "2.40")
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Terminus" :foundry "xos4" :slant normal :weight normal :height 105 :width normal))))
 '(completions-common-part ((t (:inherit default :foreground "red"))))
 '(show-paren-match ((((class color) (background light)) (:background "azure2")))))
