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
(use-package clang-format
  ;;; Support code formatting using `clang-format'.
  ;;;
  ;;; For more information, see
  ;;; https://github.com/llvm-mirror/clang/blob/master/tools/clang-format/clang-format.el
  :ensure t)

(use-package clang-format+
  ;;; Support feature niceties for `clang-format'.
  ;;;
  ;;; Most importantly, this provides a nice minor mode (`clang-format+-mode')
  ;;; that enables on-save formatting configurations.
  ;;;
  ;;; For more information, see
  ;;; https://github.com/SavchenkoValeriy/emacs-clang-format-plus
  :ensure t)

;;; cpp.el ends here
