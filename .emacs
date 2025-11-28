;;;;;;;;;;;;;;;;;;;;;;;;
;; fuxiang .emacs config
;;;;;;;;;;;;;;;;;;;;;;;;

;; Theme - use built-in dark theme for eye comfort
(load-theme 'wombat t)
;; Other built-in options: 'tango-dark 'misterioso 'deeper-blue 'manoj-dark

;; hide scroll
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))
;; hide menu
(when (fboundp 'menu-bar-mode)
  (menu-bar-mode -1))
;; hide tool
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; line number (upgraded to display-line-numbers-mode)
(global-display-line-numbers-mode t)

;; hide welcome screen
(setq inhibit-splash-screen t)

;; ban emacs bell
(setq visible-bell t)

;; goto line
(define-key global-map "\C-c\C-g" 'goto-line)

;; use y replace yes, n replace no 
(defalias 'yes-or-no-p 'y-or-n-p)

;; dont't generate the foo~ #foo# file
(setq auto-save-default nil)
(setq make-backup-files nil)

;;Set font and size (upgraded to set-frame-font)
(set-frame-font "Monaco 20" nil t)

;; Use spaces instead of tabs
(setq-default indent-tabs-mode nil) 

;; Four spaces is a tab
(setq tab-width 2)           

;; org
(setq org-startup-indented t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(word-wrap nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; move line
(defun move-line (n)
  "Move the current line up or down by N lines."
  (interactive "p")
  (setq col (current-column))
  (beginning-of-line) (setq start (point))
  (end-of-line) (forward-char) (setq end (point))
  (let ((line-text (delete-and-extract-region start end)))
    (forward-line n)
    (insert line-text)
    ;; restore point to original column in moved line
    (forward-line -1)
    (forward-char col)))

(defun move-line-up (n)
  "Move the current line up by N lines."
  (interactive "p")
  (move-line (if (null n) -1 (- n))))

(defun move-line-down (n)
  "Move the current line down by N lines."
  (interactive "p")
  (move-line (if (null n) 1 n)))

(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<down>") 'move-line-down)

;; Enable mouse support
(unless window-system
  (require 'mouse)
  (xterm-mouse-mode t)
  (global-set-key [mouse-4] (lambda ()
                              (interactive)
                              (scroll-down 1)))
  (global-set-key [mouse-5] (lambda ()
                              (interactive)
                              (scroll-up 1)))
  (defun track-mouse (e))
  (setq mouse-sel-mode t)
)
