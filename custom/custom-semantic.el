(require 'cedet)
(require 'auto-complete)
(require 'semantic)
(require 'semantic/ia)
(require 'semantic/bovine/c)
(require 'semantic/bovine/gcc)

(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
;; (add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-decoration-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-local-symbol-highlight-mode)

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
(global-semantic-idle-scheduler-mode 1)

;; (semantic-load-enable-all-exuberent-ctags-support)
(semantic-gcc-setup)

;; (semantic-load-enable-code-helpers)
(semantic-add-system-include "c:/Users/avs/AppData/Roaming/mlx/include" 'c++-mode)
(semantic-add-system-include "C:/MinGW/lib/gcc/mingw32/4.8.1/include" 'c++-mode)
(semantic-add-system-include "C:/MinGW/lib/gcc/mingw32/4.8.1/include/c++"  'c++-mode)
(semantic-add-system-include "C:/MinGW/lib/gcc/mingw32/4.8.1/include/ssp"  'c++-mode)

(semantic-add-system-include "/opt/mlx/mlxtestlib-1.6.9-xta/include" 'c++-mode)
(semantic-add-system-include "/usr/include/c++/4.8 " 'c++-mode)

(defvar c-files-regex ".*\\.\\(c\\|cpp\\|h\\|hpp\\)"
  "A regular expression to match any c/c++ related files under a directory")

(defun my-semantic-parse-dir (root regex)
  "
   This function is an attempt of mine to force semantic to
   parse all source files under a root directory. Arguments:
   -- root: The full path to the root directory
   -- regex: A regular expression against which to match all files in the directory
  "
  (let (
        ;;make sure that root has a trailing slash and is a dir
        (root (file-name-as-directory root))
        (files (directory-files root t ))
       )
    ;; remove current dir and parent dir from list
    (setq files (delete (format "%s." root) files))
    (setq files (delete (format "%s.." root) files))
    (while files
      (setq file (pop files))
      (if (not(file-accessible-directory-p file))
          ;;if it's a file that matches the regex we seek
          (progn (when (string-match-p regex file)
               (save-excursion
                 (semanticdb-file-table-object file))
           ))
          ;;else if it's a directory
          (my-semantic-parse-dir file regex)
      )
     )
  )
)

(defun my-semantic-parse-current-dir (regex)
  "
   Parses all files under the current directory matching regex
  "
  (my-semantic-parse-dir (file-name-directory(buffer-file-name)) regex)
)

(defun lk-parse-curdir-c ()
  "
   Parses all the c/c++ related files under the current directory
   and inputs their data into semantic
  "
  (interactive)
  (my-semantic-parse-current-dir c-files-regex)
)

(defun lk-parse-dir-c (dir)
  "Prompts the user for a directory and parses all c/c++ related files
   under the directory
  "
  (interactive (list (read-directory-name "Provide the directory to search in:")))
  (my-semantic-parse-dir (expand-file-name dir) c-files-regex)
)

;; (provide 'lk-file-search)

(provide 'custom-semantic)
