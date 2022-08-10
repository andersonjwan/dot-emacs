;;; appearance.el --- Initialization file for Emacs -*- lexical-binding: t; -*-

;;; Copyright (C) 2022 Jacob Anderson

;; Author: Jacob Anderson <andersonjwan@gmail.com>
;; Created: 20 Jun 2022
;; Keywords: initialization, dot-emacs, configuration, custom
;; Homepage: https://github.com/andersonjwan/.emacs.d

;;; Commentary:
;;
;; This file contains appearance configurations (e.g., themes) for
;; my own custom Emacs installation.

;;; Code:

;;; Interface Customizations

(tool-bar-mode 0)   ; hide the tool bar
(menu-bar-mode 0)   ; hide the menu bar
(scroll-bar-mode 0) ; hide the scroll bar

;; variables
(setq inhibit-startup-screen t) ; disable splash screen

;;; Icons

(use-package all-the-icons
  ;; For more information, see
  ;; https://github.com/domtronn/all-the-icons.el
  :ensure t
  :if (display-graphic-p))


;;; Themes

(use-package doom-themes
  ;; For more information, see
  ;; https://github.com/doomemacs/themes
  :ensure t
  :custom
  (doom-themes-enable-bold t)
  (doom-themes-enable-italic t))

(use-package kaolin-themes
  ;; For more information, see
  ;; https://github.com/ogdenwebb/emacs-kaolin-themes
  :ensure t
  :config
  (kaolin-treemacs-theme))

;; Set startup theme
(load-theme 'kaolin-dark t)

;;; appearance.el ends here
