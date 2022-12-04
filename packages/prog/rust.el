;;; rust.el --- Rust package configurations for Emacs -*- lexical-binding: t; -*-

;;; Copyright (C) 2022 Jacob Anderson

;; Author: Jacob Anderson <andersonjwan@gmail.com>
;; Created: 03 December 2022
;; Keywords: packages, dot-emacs, configuration, custom, rust
;; Homepage: https://github.com/andersonjwan/.emacs.d

;;; Commentary:
;;
;; This file contains package configurations for my own custom
;; Emacs installation specific to the C++ language.

;;; Code:

;;; Package Management

(use-package rust-mode
  ;; Support editing of Rust code.
  ;;
  ;; For more information, see
  ;; https://github.com/rust-lang/rust-mode
  :ensure t
  :mode ("\\.rs\\'" . rust-mode)
  :bind-keymap ("C-c C-c" . rust-mode-map)
  :hook (rust-mode . prettify-symbols-mode))

;;; rust.el ends here
