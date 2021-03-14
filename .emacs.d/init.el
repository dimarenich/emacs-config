;; Enable the www ligature in every possible major mode
(ligature-set-ligatures 't '("www"))

;; Enable ligatures in programming modes
(global-ligature-mode 't)

;; (global-flycheck-mode)
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))
