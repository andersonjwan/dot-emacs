;;; packages.el --- Package configurations for Emacs -*- lexical-binding: t; -*-

;;; Copyright (C) 2022 Jacob Anderson

;; Author: Jacob Anderson <andersonjwan@gmail.com>
;; Created: 20 Jun 2022
;; Keywords: packages, dot-emacs, configuration, custom
;; Homepage: https://github.com/andersonjwan/.emacs.d

;;; Commentary:
;;
;; This file contains package configurations for my own custom
;; Emacs installation.

;;; Code:

;;; Package Management

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

;; Update package registry
(when (not package-archive-contents)
  (package-refresh-contents))

;; Install base packages
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;;; Packages

(use-package tex
  ;; For more information, see
  ;; https://www.gnu.org/software/auctex/index.html
  :ensure auctex
  :mode ("\\.tex\\'" . latex-mode)
  :hook (LaTeX-mode . turn-on-reftex) ; turn on reftex minor mode
  :custom
  (TeX-auto-save t)
  (TeX-master nil) ; prompt for master file for multifile document structure
  (TeX-parse-self t))

(use-package company
  ;; For more information, see
  ;; https://github.com/company-mode/company-mode
  :ensure t
  :hook (prog-mode . company-mode))

(use-package flycheck
  ;; For more information, see
  ;; https://github.com/flycheck/flycheck
  :ensure t
  :hook (prog-mode . flycheck-mode))

(use-package lsp-mode
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
  ;; For more information, see
  ;; https://github.com/emacs-lsp/lsp-ui
  :ensure t)

(use-package multiple-cursors
  ;; For more information, see
  ;; https://github.com/magnars/multiple-cursors.el
  :disabled
  :ensure t
  :bind ("C-S-s" 'mc/edit-lines))

(use-package reftek
  ;; For more information, see
  ;; https://www.gnu.org/software/auctex/manual/reftex.pdf
  :defer t
  :commands turn-on-reftek
  :custom
  ;; This setting configures additional settings from AUCTeX that are set for
  ;; many popular packages (i.e., an easy configuration).
  (reftex-plug-into-AUCTeX t))

(use-package rust-mode
  ;; For more information, see
  ;; https://github.com/rust-lang/rust-mode
  :ensure t
  :mode ("\\.rs\\'" . rust-mode)
  :bind-keymap ("C-c C-c" . rust-mode-map)
  :hook (rust-mode . prettify-symbols-mode)
  :hook (rust-mode . lsp))

(use-package rustic
  ;; For more information, see
  ;; https://github.com/brotzeit/rustic
  :ensure t
  :mode ("\\.rs\\'" . rustic-mode)
  :custom
  (rustic-format-trigger 'on-save))

(use-package smartparens
  ;; For more information, see
  ;; https://github.com/Fuco1/smartparens
  :ensure t
  :init (require 'smartparens-config)
  :hook (prog-mode . smartparens-mode))

(use-package tree-sitter
  ;; For more information, see
  ;; https://github.com/emacs-tree-sitter/elisp-tree-sitter
  :ensure t
  :after tree-sitter-langs
  :config (global-tree-sitter-mode)                   ; enable whenever possible
  :hook (tree-sitter-after-on . tree-sitter-hl-mode)) ; syntax highlighting

(use-package tree-sitter-langs
  ;; For more information, see
  ;; https://github.com/emacs-tree-sitter/elisp-tree-sitter
  :ensure t)

(use-package which-key
  ;; For more information, see
  ;; https://github.com/justbur/emacs-which-key
  :ensure t
  :config (which-key-mode))

(use-package yaml-mode
  ;; For more information, see
  ;; https://github.com/yoshiki/yaml-mode
  :ensure t
  :mode ("\\.yml\\'" . yaml-mode))

;;; packages.el ends here
