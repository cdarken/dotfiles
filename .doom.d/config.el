;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq-default line-spacing 0.5)
(setq-default word-wrap t)
(global-visual-line-mode 1)
(tool-bar-mode 0)
;; (setq longlines-wrap-follows-window-size t)
;; (global-set-key [(control l)] 'longlines-mode)
;;
(setq
 projectile-project-search-path '("~/work/viab" "~/work/infora")
 dired-dwim-target t)

(cua-mode t)
(setq select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)
