(require 'package)
;;(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)
;; (add-to-list 'load-path "~/.emacs.d/custom")

(require 'cl)
(defvar required-packages
  '(company
    company-c-headers
    company-irony
    auto-complete
    auto-complete-c-headers
    flycheck
    flycheck-irony
    ggtags
    yasnippet
    sr-speedbar
    iedit
    elscreen
    ecb
    eide
    org
    color-theme
    flymake-google-cpplint
    google-c-style))

(defun packages-installed-p ()
    "Packages availability checking."
    (interactive)
    (loop for package in required-packages
          unless (package-installed-p package)
            do (return nil)
          finally (return t)))

;; Auto-install packages
(unless (packages-installed-p)
    (message "%s" "Emacs is now refreshing it's package database...")
    (package-refresh-contents)
    (message "%s" " done.")
    (dolist (package required-packages)
        (unless (package-installed-p package)
            (package-install package))))

(provide 'custom-package)
