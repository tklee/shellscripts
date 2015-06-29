(tool-bar-mode -1)

(require 'package)
  (push '("marmalade" . "http://marmalade-repo.org/packages/")
	        package-archives )
  (push '("melpa" . "http://melpa.milkbox.net/packages/")
	        package-archives)
  (package-initialize)

(require 'evil)
(evil-mode 1)

(load-theme 'gotham t)

(defadvice evil-inner-word (around underscore-as-word activate)
	     (let ((table (copy-syntax-table (syntax-table))))
	           (modify-syntax-entry ?_ "w" table)
		       (with-syntax-table table
					        ad-do-it)))

(require 'auto-complete)
(global-auto-complete-mode t)

(scroll-bar-mode -1)
