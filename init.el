;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(add-to-list 'package-archives
     '("melpa" . "http://melpa.org/packages/") t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (molokai)))
 '(custom-safe-themes
   (quote
    ("8f567db503a0d27202804f2ee51b4cd409eab5c4374f57640317b8fcbbd3e466" default)))
 '(horizontal-scroll-bar-mode nil)
 '(scroll-bar-mode nil)
 '(whitespace-style
   (quote
    (face trailing tabs spaces newline indentation::tab indentation::space indentation big-indent space-mark tab-mark newline-mark))))

(setq whitespace-display-mappings '(
  (space-mark   ?\     [?\u00B7]     [?.])
  (space-mark   ?\xA0  [?\u00A4]     [?_])
  (newline-mark ?\n    [?¬ ?\n])
  (tab-mark     ?\t    [?\u00BB ?\t] [?\\ ?\t])
))

;; lines lines-tail newline trailing space-before-tab space-afte-tab empty
;; indentation-space indentation indentation-tab tabs spaces
(setq whitespace-line-column 85)

(global-whitespace-mode t)

(require 'centered-cursor-mode)
(global-centered-cursor-mode t)

(require 'package)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

(setq column-number-mode t)
(setq visible-bell t)
(setq global-whitespace-mode t)

(with-eval-after-load 'company
  (add-to-list 'company-backends 'company-ansible))

(use-package hl-todo
       :ensure t
       :custom-face
       (hl-todo ((t (:inherit hl-todo :italic t))))
       :hook ((prog-mode . hl-todo-mode)
              (yaml-mode . hl-todo-mode)
	      (gitlab-ci-mode . hl-todo-mode)))

(when (fboundp 'tool-bar-mode) ;; Disable top bar
  (tool-bar-mode -1))

;; show line numbers
(global-linum-mode t)

;; custom modeline
(require 'doom-modeline)
(setq doom-modeline-height 1)
(set-face-attribute 'mode-line nil :height 100)
(set-face-attribute 'mode-line-inactive nil :height 100)

(doom-modeline-mode 1)

;; magit bindings
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch)

(setq company-tooltip-limit 20)

;; This works when using emacs --daemon + emacsclient

(require 'ido)
(ido-mode t)


(add-hook 'after-init-hook 'global-company-mode)

(customize-set-variable 'scroll-bar-mode nil)
(customize-set-variable 'horizontal-scroll-bar-mode nil)

(defun setup-recentf-mode ()
  (init-open-recentf) ;; open file if provided as arg, open recentf otherwise
  (recentf-mode 1)
  (setq recentf-max-menu-items 25)
  (global-set-key "\C-x\ \C-r" 'recentf-open-files))


(defun force-utf8 ()
  "Helpful when your system language encoding is not en_US.UTF-8"
  (setenv "LC_CTYPE" "UTF-8")
  (setenv "LC_ALL" "en_US.UTF-8")
  (setenv "LANG" "en_US.UTF-8"))

;; Disable warning for C-x C-l (downcase-region)
(put 'downcase-region 'disabled nil)
(fset 'yes-or-no-p 'y-or-n-p) ;; Use just 'y' or 'n' instead of 'yes' and 'no'

;; Org mode settings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-switchb)
(setq org-agenda-files (directory-files-recursively "~/Org/" "\.org$"))
(require 'org-inlinetask)


(defun setup-custom-keys ()
  ;; Set [Alt]+[Arrow] to easy switch between frames
  (windmove-default-keybindings 'meta)
  (global-set-key (kbd "ESC <left>") 'windmove-left)
  (global-set-key (kbd "ESC <right>") 'windmove-right)
  (global-set-key (kbd "ESC <down>") 'windmove-down)
  (global-set-key (kbd "ESC <up>") 'windmove-up)


  ;; Fix keyboard commands to work with non-english layout
  (package-install 'use-package 'reverse-im)
  (use-package reverse-im
    :config
    (reverse-im-activate "russian-computer"))
  )

;; dashboard setup
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

;; projectile

(projectile-mode 1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; ivy setup

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

;; dumb jump

(add-hook 'xref-backend-functions #'dumb-jump-xref-activate)

;; neotree hotkeys setup
(global-set-key (kbd "C-c t") 'neotree-toggle)
(global-set-key (kbd "C-c T") 'neotree-click-changes-root-toggle)

(setq neo-window-fixed-size nil)

;; swiper hotkey
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c u") 'swiper-all)
;; (global-set-key (kbd "M-x") 'counsel-M-x)


;; final setup
(force-utf8)
(setup-custom-keys)
(dumb-jump-mode)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(setq neo-theme 'icons)

(add-to-list 'default-frame-alist
	     '(font . "Hack 13"))

(indent-guide-global-mode)



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(hl-todo ((t (:inherit hl-todo :italic t))))
 '(whitespace-space ((t (:foreground "grey25"))))
 '(whitespace-tab ((t (:background "grey15" :foreground "grey30")))))
