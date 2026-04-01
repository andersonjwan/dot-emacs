;;; nix.el --- Nix package configurations for Emacs -*- lexical-binding: t; -*-

;;; Copyright (C) 2026 Jacob Anderson

;; Author: Jacob Anderson <andersonjwan@gmail.com>
;; Created: 01 April 2026
;; Keywords: packages, dot-emacs, configuration, custom, nix
;; Homepage: https://github.com/andersonjwan/.emacs.d

;;; Commentary:
;;
;; This file contains package configurations for my own custom
;; Emacs installation specific to the Nix language.

;;; Code:

;;; Package Management

(use-package nix-mode
  ;; Support editing of Nix expressions.
  ;;
  ;; For more information, see:
  ;; https://github.com/nixos/nix-mode
  :ensure t
  :mode "\\.nix\\'")

;;; nix.el ends here
