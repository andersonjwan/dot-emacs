;;; yaml.el --- YAML package configurations for Emacs -*- lexical-binding: t; -*-

;;; Copyright (C) 2022 Jacob Anderson

;; Author: Jacob Anderson <andersonjwan@gmail.com>
;; Created: 03 December 2022
;; Keywords: packages, dot-emacs, configuration, custom, yaml
;; Homepage: https://github.com/andersonjwan/.emacs.d

;;; Commentary:
;;
;; This file contains package configurations for my own custom
;; Emacs installation specific to the C++ language.

;;; Code:

;;; Package Management

(use-package yaml-mode
  ;; Support editing of YAML code.
  ;;
  ;; For more information, see
  ;; https://github.com/yoshiki/yaml-mode
  :ensure t
  :mode ("\\.yml\\'" . yaml-mode))

;;; yaml.el ends here
