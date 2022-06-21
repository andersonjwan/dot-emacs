;;; packages.el --- Package configurations for Emacs -*- lexical-binding: t; -*-

;;; Copyright (C) 2022 Jacob Anderson

;; Author: Jacob Anderson <andersonjwan@gmail.com>
;; Created: 20 Jun 2022
;; Keywords: packages, dot-emacs, configuration, custom
;; Homepage: https://github.com/andersonjwan/.emacs.d

;;; Package Management

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

;; Update package registry
(when (not package-archive-contents)
  (package-refresh-contents))

;; Install base packages
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;;; Packages

(use-package smartparens
  :ensure t
  :init (require 'smartparens-config)
  :config (smartparens-global-mode t))

;;; packages.el ends here
