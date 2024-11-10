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
(setq use-file-dialog nil)      ; disable file dialog selector

;;; Themes

;; Add local path.
;;
;; This adds the `~/.emacs.d/themes/' path to the list of paths to search from
;; when loading locally installed themes.
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(use-package doom-themes
  :ensure t
  :custom
  (doom-themes-enable-bold t)
  (doom-themes-enable-italic t))

;; Set startup theme
(load-theme 'dracula-pro-alucard t)

;;; appearance.el ends here
