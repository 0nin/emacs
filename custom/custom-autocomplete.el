; start auto-complete with emacs
(require 'auto-complete)
; do default config for auto-complete
(require 'auto-complete-config)
(ac-config-default)

; let's define a function which initializes auto-complete-c-headers and gets called for c/c++ hooks
(defun my:ac-c-header-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
 ;; (add-to-list 'achead:include-directories '"/Applications/Xcode.app/Contents/Developer/usr/llvm-gcc-4.2/lib/gcc/i686-apple-darwin11/4.2.1/include")
)
; now let's call this function from c/c++ hooks
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)


; turn on Semantic
(semantic-mode 1)
; let's define a function which adds semantic as a suggestion backend to auto complete
; and hook this function to c-mode-common-hook
(defun my:add-semantic-to-autocomplete() 
  (add-to-list 'ac-sources 'ac-source-semantic)
)
(add-hook 'c-mode-common-hook 'my:add-semantic-to-autocomplete)
; turn on ede mode 
(global-ede-mode 1)
; create a project for our program.
;; (ede-cpp-root-project "exxxxx" :file "v:/workspace_avs/exxxx/Sources/tp.cpp"
;; 	        :include-path '("v:/mlx/log4cpp")
;;                       :include-path '("v:/mlx/include")
;;                       :include-path '("v:/mlx/")
;;                       :include-path '("v:/workspace_avs/exxxx/Configurations/FT/"))
; you can use system-include-path for setting up the system header file locations.
                                        ; turn on automatic reparsing of open buffers in semantic
; create a project for our program.
(ede-cpp-root-project "exxxxx" :file "/home/onin/xta-tool/src/main.cpp"
                      )
; you can use system-include-path for setting up the system header file locations.
; turn on automatic reparsing of open buffers in semantic
(global-semantic-idle-scheduler-mode 1)

(provide 'custom-autocomplete)
