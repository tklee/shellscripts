(tool-bar-mode -1)

 (require 'package)
   (push '("marmalade" . "http://marmalade-repo.org/packages/")
 	        package-archives )
   (push '("melpa" . "http://stable.melpa.org/packages/")
 	        package-archives)
   (package-initialize)

(require 'evil)
(evil-mode 1)

(defadvice evil-inner-word (around underscore-as-word activate)
  (let ((table (copy-syntax-table (syntax-table))))
    (modify-syntax-entry ?_ "w" table)
    (with-syntax-table table
      ad-do-it)))

(require 'auto-complete)
(global-auto-complete-mode t)

(scroll-bar-mode -1)

(desktop-save-mode 1)

(alchemist-mode 1)

;(load-theme 'gotham t)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'monokai t)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                     ("marmalade" . "https://marmalade-repo.org/packages/")
                     ("melpa" . "https://melpa.org/packages/")))

(setenv "ESHELL" (expand-file-name "/usr/local/bin/zsh"))
(setq shell-command-switch "-ic")


;; packages
;; (when (>= emacs-major-version 24)
;;   (require 'package)
;;   (package-initialize)
;;   (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;;   )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("2da65cb7074c176ca0a33f06bcc83ef692c9175e41b6370f5e94eb5811d6ee3a" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
	     (next-win-buffer (window-buffer (next-window)))
	     (this-win-edges (window-edges (selected-window)))
	     (next-win-edges (window-edges (next-window)))
	     (this-win-2nd (not (and (<= (car this-win-edges)
					 (car next-win-edges))
				     (<= (cadr this-win-edges)
					 (cadr next-win-edges)))))
	     (splitter
	      (if (= (car this-win-edges)
		     (car (window-edges (next-window))))
		  'split-window-horizontally
		'split-window-vertically)))
	(delete-other-windows)
	(let ((first-win (selected-window)))
	  (funcall splitter)
	  (if this-win-2nd (other-window 1))
	  (set-window-buffer (selected-window) this-win-buffer)
	  (set-window-buffer (next-window) next-win-buffer)
	  (select-window first-win)
	  (if this-win-2nd (other-window 1))))))

(global-set-key (kbd "C-x |") 'toggle-window-split)
(global-set-key (kbd "C-x p") 'helm-projectile-find-file-dwim)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(setq projectile-enable-caching t)
