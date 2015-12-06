(setq backup-directory-alist `(("." . "~/.emacs.d")))
; http://stackoverflow.com/questions/151945/how-do-i-control-how-emacs-makes-backup-files

(menu-bar-mode -1)
(line-number-mode t)
(column-number-mode t)

(setq c-basic-offset 4)
(setq-default fill-column 80)

(setq font-lock-global-modes t)
(setq whitespace-style `(face trailing))
; (require `fill-column-indicator) (define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1))) (setq-default fci-style `rule) (setq-default fci-rule-color "red") (add-hook `after-change-major-mode-hook `fci-mode)
