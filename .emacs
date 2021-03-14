(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")
	("marmalade" . "https://marmalade-repo.org/packages/")))

(require 'package)
(package-initialize)

(setq dimarenich-packages
      '(
        cider	
        clojure-mode
        dockerfile-mode	
        expand-region
        highlight	
        json-mode	
        magit
        markdown-mode
        yaml-mode))

(dolist (pkg dimarenich-packages)
  (unless (package-installed-p pkg)
    (package-install pkg)))

;; cider
(require 'cider)

;; credentials
(setq user-full-name    "Dmitry Marenich")
(setq user-mail-address "d.marenich@protonmail.ch")

;; tramp-term
(setq tramp-default-method "ssh")

;; theme
(load-theme 'leuven t)

;; font
(setq-default line-spacing 0.12)
(setq global-ligature-mode 't)

;; formats
(setq display-time-24hr-format t)

(custom-set-variables
 '(column-number-mode t)
 '(display-battery-mode t)
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(yaml-mode tramp-term markdown-mode magit json-mode highlight expand-region dockerfile-mode))
 '(save-place-mode t)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tool-bar-position 'left))

(custom-set-faces
 ;; https://github.com/JetBrains/JetBrainsMono
 ;; https://fonts.google.com/specimen/JetBrains+Mono?preview.text_type=custom
 '(default ((t (:family "JetBrains Mono NL" :foundry "JB" :slant normal :weight normal :height 128 :width normal)))))
