;;; prog.el --- Programming configurations for Emacs -*- lexical-binding: t; -*-

;;; Copyright (C) 2022 Jacob Anderson

;; Author: Jacob Anderson <andersonjwan@gmail.com>
;; Created: 20 Jun 2022
;; Keywords: packages, dot-emacs, configuration, custom, programming
;; Homepage: https://github.com/andersonjwan/.emacs.d

;;; Commentary:
;;
;; This file contains package configurations for my own custom
;; Emacs installation.

;;; Code:

;;; Packages

;;; Programming Language Support
;;;
;;; The set of packages below provides feature support for various programming
;;; languages.
(load "prog/cpp.el")   ; C++
(load "prog/rust.el")  ; Rust
(load "prog/latex.el") ; LaTeX
(load "prog/yaml.el")  ; YAML

(use-package flycheck
  ;; Support proper syntax checking.
  ;;
  ;; For more information, see
  ;; https://github.com/flycheck/flycheck
  :ensure t
  :hook (prog-mode . flycheck-mode))

(use-package lsp-mode
  ;; Support for Language Server Protocal (LSP) utilities.
  ;;
  ;; For more information, see
  ;; https://github.com/emacs-lsp/lsp-mode/
  :ensure t
  :custom (lsp-keymap-prefix "C-c l") ; https://emacs.stackexchange.com/q/60784/38330

  ;; Rust
  (lsp-rust-clippy-preference "on")                ; use clippy linting for all crates in workspace
  (lsp-rust-analyzer-server-display-inlay-hints t) ; enable inlay hints
  (lsp-rust-analyzer-inlay-hint t)                 ; display inlay hints when possible
  (lsp-rust-analyzer-cargo-watch-command "clippy") ; watch code with clippy
  (lsp-rust-analyzer-display-parameter-hints t)    ; display function call parameter names

  ;; For which-key integration to work, the `lsp-keymap-prefix' variable
  ;; must be used to change the keymap keybinding, and the `lsp-mode-hook' must be
  ;; used explicitly.
  :hook (lsp-mode . lsp-enable-which-key-integration)
  :commands lsp)

(use-package lsp-ui
  ;; Display LSP information within the buffer.
  ;;
  ;; For more information, see
  ;; https://github.com/emacs-lsp/lsp-ui
  :ensure t)

(use-package tree-sitter
  ;; Enable smarter syntax highlighting capabilities.
  ;;
  ;; For more information, see
  ;; https://github.com/emacs-tree-sitter/elisp-tree-sitter
  :ensure t
  :after tree-sitter-langs
  :config (global-tree-sitter-mode)                   ; enable whenever possible
  :hook (tree-sitter-after-on . tree-sitter-hl-mode)) ; syntax highlighting

(use-package tree-sitter-langs
  ;; Support a variety of programming languages for `tree-sitter'.
  ;;
  ;; For more information, see
  ;; https://github.com/emacs-tree-sitter/elisp-tree-sitter
  :ensure t)

;;; prog.el ends here
