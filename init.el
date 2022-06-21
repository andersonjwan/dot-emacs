;;; init.el --- Initialization file for Emacs -*- lexical-binding: t; -*-

;;; Copyright (C) 2022 Jacob Anderson

;; Author: Jacob Anderson <andersonjwan@gmail.com>
;; Created: 20 Jun 2022
;; Keywords: initialization, dot-emacs, configuration, custom
;; Homepage: https://github.com/andersonjwan/.emacs.d

;;; Commentary:
;;
;; This file contains initialization configurations for
;; my own custom Emacs installation.

;;; Code:

;; Load configuration
(load (concat user-emacs-directory "settings.el"))
(load (concat user-emacs-directory "packages.el"))
(load (concat user-emacs-directory "appearance.el"))

;;; init.el ends here
