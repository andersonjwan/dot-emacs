;;; cpp.el --- C++ package configurations for Emacs -*- lexical-binding: t; -*-

;;; Copyright (C) 2022 Jacob Anderson

;; Author: Jacob Anderson <andersonjwan@gmail.com>
;; Created: 03 December 2022
;; Keywords: packages, dot-emacs, configuration, custom, cpp
;; Homepage: https://github.com/andersonjwan/.emacs.d

;;; Commentary:
;;
;; This file contains package configurations for my own custom
;; Emacs installation specific to the C++ language.

;;; Code:

;;; Package Management

(use-package flycheck-clang-tidy
  ;; Enable C/C++ linting with `clang-tidy'.
  ;;
  ;; For more information, see
  ;; https://github.com/ch1bo/flycheck-clang-tidy
  :ensure t
  :after flycheck
  :hook (flycheck-mode . flycheck-clang-tidy-setup))

;;; cpp.el ends here
