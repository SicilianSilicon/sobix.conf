
;;;;

(load "~/.emacs.d/packages.el")

;;;;
(add-to-list 'default-frame-alist '(height . 35))
(add-to-list 'default-frame-alist '(width . 95))

;;(setq inhibit-startup-echo-area-message t)

(setq startup_quote ";; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.
\nWithout Gre@t Solitude,
no SERIOUS WORK is possible.// __Picasso\n\n;; @ll You need is λ.\n;; Happy Hacking ☕\n\n\n")

(setq inhibit-startup-message t)
(setq initial-scratch-message startup_quote)
(display-time)

;;;;


;;MINOR_SETTINGS
(setq-default cursor-type 'bar) 
(setq column-number-mode t)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(global-visual-line-mode t)
(global-display-line-numbers-mode 1)
(setq make-backup-files nil)
(setq auto-save-default nil)

(global-set-key (kbd "<C-tab>")  'mode-line-other-buffer)

(setq icomplete-vertical-mode t)
;;;;

;;VARIABLES
(defalias 'yes-or-no-p 'y-or-n-p) 

(defun my-kill-buffer-and-frame ()
  "kill the current buffer and the current frame"
  (interactive)
  (when (y-or-n-p "Are you sure you wish to delete the current frame?")
    (kill-buffer)
    (delete-frame)))
(global-set-key [(f4)] 'my-kill-buffer-and-frame)

;;;;

;;CUSTOM
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "black" :foreground "wheat" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 118 :width ultra-expanded :foundry "AOEF" :family "Special Elite")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(minsk))
 '(custom-safe-themes
   '("ca2e59377dc1ecee2a1069ec7126b453fa1198fed946304abb9a5b8c7ad5404d" default))
 '(package-selected-packages
   '(kuronami-theme minsk-theme ubuntu-theme iy-go-to-char lsp-mode pyenv-mode elpy beacon use-package)))
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;;(load-theme 'minsk t)z
