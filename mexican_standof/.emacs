(setq backup-directory-alist `(("." . "~/.emacs.d")))
; http://stackoverflow.com/questions/151945/how-do-i-control-how-emacs-makes-backup-files

(menu-bar-mode -1)
(line-number-mode t)
(column-number-mode t)

(setq c-default-style "bsd")
(setq-default fill-column 80)

(setq font-lock-global-modes t)
(setq whitespace-style '(face trailing))

(setq-default indent-tabs-mode t)
(setq tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

; auto close bracket insertion. New in emacs 24
(electric-pair-mode 1)
