;;; packages.el --- Package configurations for Emacs -*- lexical-binding: t; -*-

;;; Copyright (C) 2022 Jacob Anderson

;; Author: Jacob Anderson <andersonjwan@gmail.com>
;; Created: 20 Jun 2022
;; Keywords: packages, dot-emacs, configuration, custom
;; Homepage: https://github.com/andersonjwan/.emacs.d

;;; Commentary:
;;
;; This file contains package configurations for my own custom
;; Emacs installation.

;;; Code:

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

(use-package load-relative
  ;; Support loading files relatively.
  ;;
  ;; For more information, see
  ;; https://github.com/rocky/emacs-load-relative
  :ensure t)

;;; Packages
(load-relative "packages/prog.el")

(use-package company
  ;; Support buffer auto-completion.
  ;;
  ;; For more information, see
  ;; https://github.com/company-mode/company-mode
  :ensure t
  :hook (prog-mode . company-mode))

(use-package multiple-cursors
  ;; Support multiple cursors within a buffer.
  ;;
  ;; For more information, see
  ;; https://github.com/magnars/multiple-cursors.el
  :disabled
  :ensure t
  :bind ("C-S-s" 'mc/edit-lines))

(use-package smartparens
  ;; Balance parentheses, brackets, braces, etc.
  ;;
  ;; For more information, see
  ;; https://github.com/Fuco1/smartparens
  :ensure t
  :init (require 'smartparens-config)
  :hook (prog-mode . smartparens-mode))

(use-package which-key
  ;; Support Emacs key combination tipping.
  ;;
  ;; For more information, see
  ;; https://github.com/justbur/emacs-which-key
  :ensure t
  :config (which-key-mode))

;;; packages.el ends here
