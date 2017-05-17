;;;;;;;;;;;;;;;;;;;;;;;;
;; fuxiang .emacs config
;;;;;;;;;;;;;;;;;;;;;;;;

;; hide scroll 
(scroll-bar-mode -1)
;; hide menu
(menu-bar-mode -1)
;; hide tool
(tool-bar-mode -1)

;; hide welcome screen
(setq inhibit-splash-screen t)

;; reset the font size
(set-face-attribute 'default nil :height 170)

;; use y replace yes, n replace no 
(defalias 'yes-or-no-p 'y-or-n-p)

;; dont't generate the foo~ #foo# file
(setq auto-save-default nil)
(setq make-backup-files nil)
