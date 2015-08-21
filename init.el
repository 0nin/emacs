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
(require 'cc-mode)
(require 'company)
(require 'custom-ggtags)
(require 'custom-company)
(require 'custom-semantic)
(require 'custom-company-c-headers)
(require 'custom-autocomplete)
(require 'custom-keys)
(require 'custom-yasnippet)
(require 'custom-imenu)
(require 'custom-other)
(require 'custom-org)
(require 'custom-switch)
(require 'color-theme-mac-classic)
(color-theme-mac-classic)

;; (defun create-tags (dir-name)
;;      "Create tags file."
;;      (interactive "DDirectory: ")
;;      (eshell-command 
;;       (format "find %s -type f -name \"*.[ch]\" | etags -" dir-name)))
