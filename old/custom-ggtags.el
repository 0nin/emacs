(require 'ggtags)
;; (add-hook 'c-mode-common-hook
;;           (lambda ()
;;             (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
;;               (ggtags-mode 1))))

(ggtags-mode 1)

(define-key ggtags-mode-map (kbd "C-c s") 'ggtags-find-other-symbol)
(define-key ggtags-mode-map (kbd "C-c h") 'ggtags-view-tag-history)
(define-key ggtags-mode-map (kbd "C-c r") 'ggtags-find-reference)
(define-key ggtags-mode-map (kbd "C-c f") 'ggtags-find-file)
(define-key ggtags-mode-map (kbd "C-c c") 'ggtags-create-tags)
(define-key ggtags-mode-map (kbd "C-c u") 'ggtags-update-tags)


(define-key ggtags-mode-map (kbd "M-,") 'pop-tag-mark)
;; 
;; (ggtags-mode)

(provide 'custom-ggtags)
