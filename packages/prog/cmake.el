;;; cmake.el --- CMake package configurations for Emacs -*- lexical-binding: t; -*-

;;; Copyright (C) 2022 Jacob Anderson

;; Author: Jacob Anderson <andersonjwan@gmail.com>
;; Created: 15 December 2022
;; Keywords: packages, dot-emacs, configuration, custom, cmake
;; Homepage: https://github.com/andersonjwan/.emacs.d

;;; Commentary:
;;
;; This file contains package configurations for my own custom
;; Emacs installation specific to CMake.

;;; Code:

;;; Package Management

(use-package cmake-mode
  ;; Support CMake editing.
  ;;
  ;; For more information, see
  ;; https://github.com/Kitware/CMake/blob/master/Auxiliary/cmake-mode.el
  :ensure t)

;;; cmake.el ends here
