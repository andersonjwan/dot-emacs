;;; antlr.el --- ANTLR package configurations for Emacs -*- lexical-binding: t; -*-

;;; Copyright (C) 2022 Jacob Anderson

;; Author: Jacob Anderson <andersonjwan@gmail.com>
;; Created: 15 December 2022
;; Keywords: packages, dot-emacs, configuration, custom, antlr
;; Homepage: https://github.com/andersonjwan/.emacs.d

;;; Commentary:
;;
;; This file contains package configurations for my own custom
;; Emacs installation specific to the ANTLR meta-language.

;;; Code:

;;; Package Management

(use-package antlr-mode
  ;; Support ANTLR editing.
  ;;
  ;; For more information, see
  ;; https://antlr-mode.sourceforge.net/
  :ensure t
  :mode "\\.g4\\'")

;;; antlr.el ends here
