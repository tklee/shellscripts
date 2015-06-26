(tool-bar-mode -1)

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

(require 'evil)
(evil-mode 1)

(load-theme 'gotham t)

(scroll-bar-mode -1)

