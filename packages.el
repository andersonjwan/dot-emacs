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

(use-package company
  ;; For more information, see
  ;; https://github.com/company-mode/company-mode
  :ensure t
  :hook (prog-mode . company-mode)
  :custom
  (company-minimum-prefix-length 2)
  (company-selection-wrap-around t)
  (company-show-numbers t)
  (company-tooltip-align-annotations t)
  (company-tooltip-limit 10)
  (company-tooltip-flip-when-above t))

(use-package lsp-mode
  ;; For more information, see
  ;; https://github.com/emacs-lsp/lsp-mode/
  :ensure t
  :custom (lsp-keymap-prefix "C-c l")
  :hook (lsp-mode . lsp-enable-which-key-integration)
  :commands lsp)

(use-package smartparens
  ;; For more information, see
  ;; https://github.com/Fuco1/smartparens
  :ensure t
  :init (require 'smartparens-config)
  :hook (prog-mode . smartparens-strict-mode)
  :config (smartparens-global-mode t))

(use-package which-key
  ;; For more information, see
  ;; https://github.com/justbur/emacs-which-key
  :ensure t
  :config (which-key-mode))

;;; packages.el ends here
