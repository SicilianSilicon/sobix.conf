;;;;

;;PACKAGES-INIT
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("elpy" . "https://jorgenschaefer.github.io/packages/"))
(package-initialize)


;;USE-PACKAGE
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;BEACON
(use-package beacon
  :ensure t
  :init
  (beacon-mode 1))

;;AVY 
(use-package avy
  :ensure t
  :bind
  ("M-g f" . avy-goto-char)
  ("M-g F" . avy-goto-char-2)
  ("C-;" . avy-goto-char-timer)
  )


;;PYTHON
(use-package elpy
  :ensure t
  :config
  (setq elpy-rpc-backend "jedi")
  :init
  (elpy-enable))

(setq pyton-indent-guess-offset t)
(setq python-indent-guess-indent-offset-verbose nil)
  
(use-package pyenv-mode
  :ensure t
  :init
  (add-to-list 'exec-path "~/.pyenv/bin/pyenv")
  (setenv "WORKON_HOME" "~/.pyenv/versions/")
  :config
;;(pyenv-mode)
;;  :bind
;;  ("C-x p e" . pyenv-activate-current-project))
  )

(use-package lsp-mode
  :ensure t
  :commands lsp)

(unless (package-installed-p 'minsk-theme)
  (package-refresh-contents);;
  (package-install 'minsk-theme))
