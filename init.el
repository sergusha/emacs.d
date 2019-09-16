
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(compilation-scroll-output t)
 '(custom-enabled-themes (quote (doom-one)))
 '(custom-safe-themes
   (quote
    ("2d392972cbe692ee4ac61dc79907af65051450caf690a8c4d36eb40c1857ba7d" "0fe9f7a04e7a00ad99ecacc875c8ccb4153204e29d3e57e9669691e6ed8340ce" "423435c7b0e6c0942f16519fa9e17793da940184a50201a4d932eafe4c94c92d" "a23f169b7909feaa53a0e7c08041aae663ef074fd1618103c09bf022a2ec1ee4" "9cb2ce95b651ec5cad605bcd097366d72731e9e096943e7a04cba860eb898dff" "728eda145ad16686d4bbb8e50d540563573592013b10c3e2defc493f390f7d83" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "f589e634c9ff738341823a5a58fc200341b440611aaa8e0189df85b44533692b" "fefab1b6d3366a959c78b4ed154018d48f4ec439ce652f4748ef22945ca7c2d5" "c8f959fb1ea32ddfc0f50db85fea2e7d86b72bb4d106803018be1c3566fd6c72" "66d53738cc824d0bc5b703276975581b8de2b903d6ce366cd62207b5dd6d3d13" "d6f04b6c269500d8a38f3fabadc1caa3c8fdf46e7e63ee15605af75a09d5441e" "2a3ffb7775b2fe3643b179f2046493891b0d1153e57ec74bbe69580b951699ca" "071f5702a5445970105be9456a48423a87b8b9cfa4b1f76d15699b29123fb7d8" "2878517f049b28342d7a360fd3f4b227086c4be8f8409f32e0f234d129cee925" "f2b83b9388b1a57f6286153130ee704243870d40ae9ec931d0a1798a5a916e76" "f951343d4bbe5a90dba0f058de8317ca58a6822faa65d8463b0e751a07ec887c" "332e009a832c4d18d92b3a9440671873187ca5b73c2a42fbd4fc67ecf0379b8c" "2d1fe7c9007a5b76cea4395b0fc664d0c1cfd34bb4f1860300347cdad67fb2f9" "70ed3a0f434c63206a23012d9cdfbe6c6d4bb4685ad64154f37f3c15c10f3b90" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(fci-rule-color "#5c5e5e")
 '(global-yascroll-bar-mode t)
 '(hl-todo-keyword-faces
   (quote
    (("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f"))))
 '(inhibit-startup-screen t)
 '(jdee-db-active-breakpoint-face-colors (cons "#0d0d0d" "#81a2be"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#0d0d0d" "#b5bd68"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#0d0d0d" "#5a5b5a"))
 '(large-file-warning-threshold nil)
 '(make-backup-files nil)
 '(mouse-wheel-progressive-speed nil)
 '(objed-cursor-color "#cc6666")
 '(org-agenda-files
   (quote
    ("/home/sergusha/Org/house.org" "/home/sergusha/Org/itmo.org")) t)
 '(package-selected-packages
   (quote
    (git-lens gitlab-ci-mode gitignore-templates gitignore-mode docker-compose-mode dockerfile-mode yaml-mode dumb-jump doom-modeline reverse-im yascroll use-package neotree all-the-icons doom-themes ample-theme spacemacs-theme company-terraform magit)))
 '(pdf-view-midnight-colors (quote ("#b2b2b2" . "#292b2e")))
 '(revert-without-query (quote (".*")))
 '(scroll-conservatively 1)
 '(scroll-preserve-screen-position t)
 '(sublimity-mode t)
 '(tags-revert-without-query t)
 '(vc-annotate-background "#1d1f21")
 '(vc-annotate-color-map
   (list
    (cons 20 "#b5bd68")
    (cons 40 "#c8c06c")
    (cons 60 "#dcc370")
    (cons 80 "#f0c674")
    (cons 100 "#eab56d")
    (cons 120 "#e3a366")
    (cons 140 "#de935f")
    (cons 160 "#d79e84")
    (cons 180 "#d0a9a9")
    (cons 200 "#c9b4cf")
    (cons 220 "#ca9aac")
    (cons 240 "#cb8089")
    (cons 260 "#cc6666")
    (cons 280 "#af6363")
    (cons 300 "#936060")
    (cons 320 "#765d5d")
    (cons 340 "#5c5e5e")
    (cons 360 "#5c5e5e")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

(when (fboundp 'tool-bar-mode) ;; Disable top bar
  (tool-bar-mode -1))

(scroll-bar-mode -1)

;; show line numbers
(global-linum-mode t)

;; custom modeline
(require 'doom-modeline)
(setq doom-modeline-height 1)
(set-face-attribute 'mode-line nil :height 100)
(set-face-attribute 'mode-line-inactive nil :height 100)

(doom-modeline-mode 1)


(setq company-tooltip-limit 20)

;; Set default font
(set-face-attribute 'default nil
                    :family "Source Code Pro"
                    :height 110
                    :weight 'normal
                    :width 'normal)
 
(require 'ido)
(ido-mode t)


(add-hook 'after-init-hook 'global-company-mode)

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
(force-utf8)
(setup-custom-keys)
(dumb-jump-mode)
