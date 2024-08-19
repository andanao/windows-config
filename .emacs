;;(set-background-color "#000000")

(setq ads/git-dir "c:/users/adanaos/git")

(setq ads/user-dir-emacs "c:/Users/adanaos/git/emacs/")

(setq ads/user-dir-org "c:/users/adanaos/git/org-work/")

(setq ads/personal-dir-org  "c:/users/adanaos/git/org/")

(setq ads/user-dir-readme (concat ads/user-dir-emacs "readme.org"))

(setq ads/user-dir-config "c:/Users/adanaos/AppData/Roaming/.emacs")

(setq ads/computer-id "work")

(setq debug-on-error t)

(require 'package)

;(setq package-archives '(("melpa" . "https://melpa.org/packages/")
;                         ("gnu" . "https://elpa.gnu.org/packages/")
;                         ("nongnu" . "https://elpa.nongnu.org/nongnu/")
;                         ("org" . "https://orgmode.org/elpa/")
;                         ("elpa" . "https://elpa.gnu.org/packages/")
;       ))

(package-initialize)

(unless package-archive-contents
     (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
(package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)


(use-package org)

(set-default-coding-systems 'utf-8)

(org-babel-load-file "c:/users/adanaos/git/emacs/readme.org")
;;(load-file "C:/_Git/emacs/readme.el")

;; (load-file (concat ads/user-dir-org "work.el"))

(org-babel-load-file "c:/users/adanaos/git/emacs-work/work-config.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("3cdd0a96236a9db4e903c01cb45c0c111eb1492313a65790adb894f9f1a33b2d" default))
 '(org-capture-after-finalize-hook '(anki-editor-reset-cloze-number))
 '(package-selected-packages
   '(kbd-mode alert-toast alert protobuf-mode git-modes docker rainbow-mode dockerfile-mode rust-mode elmacro nlinum ranger moody nano-modeline yaml-mode csv-mode vbasense treemacs-all-the-icons markdown-mode all-the-icons-nerd-fonts treemacs-persp treemacs-magit treemacs-icons-dired treemacs-projectile treemacs-evil treemacs diredfl dired-git-info dired-single anki-editor anki-connect magit with-editor which-key visual-fill-column undo-tree transient rainbow-delimiters org-transclusion org-cliplink org-bullets org-appear ivy-rich ivy-prescient hydra helpful general evil-smartparens evil-org evil-collection emojify doom-themes doom-modeline counsel-projectile browse-kill-ring async all-the-icons))
 '(package-vc-selected-packages
   '((kbd-mode :url "https://github.com/kmonad/kbd-mode" :last-release))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq debug-on-error nil)
(put 'erase-buffer 'disabled nil)
