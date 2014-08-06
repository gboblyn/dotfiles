;; evil settings
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
(setq evil-shift-width 2)

;; Enable line numbers in all supporting modes.
(global-linum-mode t)

;; Enable ido with fuzzy matching
(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode t)
(setq ido-create-new-buffer 'always)

;; turn off scroll bars and other gui bars
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; Get rid of that annoying startup message
(setq inhibit-startup-message t)

;; Add melpa package list (for magit, etc)
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Autoindent on carriage return.
(define-key global-map (kbd "RET") 'newline-and-indent)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("60f04e478dedc16397353fb9f33f0d895ea3dab4f581307fbf0aa2f07e658a40" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; monokai theme!
(load-theme 'monokai t)

;; Default to ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)
