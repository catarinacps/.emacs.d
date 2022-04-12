;;; early-init.el --- The init before init -*- lexical-binding: t -*-
;;
;; Copyright (c) 2022 Henrique Silva
;;
;; Author: Henrique Silva <hcpsilva@inf.ufrgs.br>
;; Keywords: startup

;;; Commentary:

;;; Code:

;; change the default eln-cache directory
(when (fboundp 'startup-redirect-eln-cache)
  (startup-redirect-eln-cache
   (convert-standard-filename
    (expand-file-name  "var/eln-cache/" user-emacs-directory))))

(setq load-prefer-newer t
      inhibit-x-resources t
      comp-deferred-compilation t ; automatically native compile stuff
      package-enable-at-startup nil ; don't auto-initialize!
      ;; don't add that `custom-set-variables' block to my init.el!
      package--init-file-ensured t)

;; setup some frame configurations early so we don't waste time later
(setq default-frame-alist `((font . "Source Code Pro 13")
                            (tool-bar-lines . 0)
                            (tab-bar-show . t)
                            (vertical-scroll-bars . nil)
                            (horizontal-scroll-bars . nil)
                            (internal-border-width . 1)
                            (right-divider-width . 1)
                            (bottom-divider-width . 1)))

(custom-set-faces '(fixed-pitch ((t :family unspecified))))

(setq inhibit-startup-screen t
      blink-cursor-mode nil
      tab-bar-tab-hints nil
      tab-bar-separator " "
      tab-bar-border 1)

;;; early-init.el ends here
