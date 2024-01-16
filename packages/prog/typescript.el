;;; typescript.el --- TypeScript package configurations for Emacs -*- lexical-binding: t; -*-

;;; Copyright (C) 2024 Jacob Anderson

;; Author: Jacob Anderson <andersonjwan@gmail.com>
;; Created: 16 January 2024
;; Keywords: packages, dot-emacs, configuration, custom, ts
;; Homepage: https://github.com/andersonjwan/.emacs.d

;;; Commentary:
;;
;; This file contains package configurations for my own custom
;; Emacs installation specific to the TypeScript language.

;;; Code:

;;; Package Management

(use-package typescript-mode
  ;; Support editing of TypeScript code.
  ;;
  ;; For more information, see
  ;; https://github.com/emacs-typescript/typescript.el
  :ensure t
  :mode ("\\.ts\\'" . typescript-mode))

;;; typescript.el ends here
