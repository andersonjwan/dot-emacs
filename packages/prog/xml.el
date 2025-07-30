;;; xml.el --- XML package configurations for Emacs -*- lexical-binding: t; -*-

;;; Copyright (C) 2025 Jacob Anderson

;; Author: Jacob Anderson <andersonjwan@gmail.com>
;; Created: 30 July 2025
;; Keywords: packages, dot-emacs, configuration, custom, xml
;; Homepage: https://github.com/andersonjwan/.emacs.d

;;; Commentary:
;;
;; This file contains package configurations for my own custom
;; Emacs installation specific to the XML language.

;;; Code:

;;; Package Management

(use-package nxml-mode
  ;; Support editing of XML code.
  ;;
  ;; For more information, see
  ;; https://www.gnu.org/software/emacs/manual/html_mono/nxml-mode.html
  :mode (("\\.xml\\'" . nxml-mode)
         ("\\.sdf\\'" . nxml-mode))

  :custom
  (nxml-child-indent 4))

;;; xml.el ends here
