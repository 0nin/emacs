(add-to-list 'company-backends 'company-c-headers)
;; hs-minor-mode for folding source code
(add-hook 'c-mode-common-hook 'hs-minor-mode)
;; use space to indent by default
(setq-default indent-tabs-mode nil)

(provide 'custom-company-c-headers)
