;;; python.el --- Python package configurations for Emacs -*- lexical-binding: t; -*-

;;; Copyright (C) 2025 Jacob Anderson

;; Author: Jacob Anderson <andersonjwan@gmail.com>
;; Created: 27 May 2025
;; Keywords: packages, dot-emacs, configuration, custom, python
;; Homepage: https://github.com/andersonjwan/dot-emacs

;;; Commentary:
;;
;; This file contains package configurations for my own custom
;; Emacs installation specific to the Python language.

;;; Code:

;;; Package Management

(use-package ruff-format
  ;; Support for linting and formatting Python code.
  ;;
  ;; For more information, see:
  ;; https://github.com/https://github.com/JoshHayes/emacs-ruff-format
  :ensure t
  :hook (python-mode . ruff-format-on-save-mode))

;;; python.el ends here
