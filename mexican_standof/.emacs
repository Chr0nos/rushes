(setq backup-directory-alist `(("." . "~/.emacs.d")))
;; http://stackoverflow.com/questions/151945/how-do-i-control-how-emacs-makes-backup-files
;; https://openclassrooms.com/courses/votre-premier-emacs-la-configuration-d-emacs-pour-les-zeros

;; (setq inhibit-startup-message t)
(menu-bar-mode -1)
(line-number-mode t)
(column-number-mode t)
(global-linum-mode 1)

(setq c-default-style "gnu")
(setq c-basic-offset 4)


;; (require mouse)
;; (xterm-mouse-mode t)

(setq font-lock-global-modes t)
(setq whitespace-style `(face trailing))
;; (require `fill-column-indicator) (define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1))) (setq-default fci-style `rule) (setq-default fci-rule-color "red") (add-hook `after-change-major-mode-hook `fci-mode)