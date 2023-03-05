;;; latex.el --- LaTeX package configurations for Emacs -*- lexical-binding: t; -*-

;;; Copyright (C) 2022 Jacob Anderson

;; Author: Jacob Anderson <andersonjwan@gmail.com>
;; Created: 03 December 2022
;; Keywords: packages, dot-emacs, configuration, custom, latex
;; Homepage: https://github.com/andersonjwan/.emacs.d

;;; Commentary:
;;
;; This file contains package configurations for my own custom
;; Emacs installation specific to the C++ language.

;;; Code:

;;; Package Management

(use-package tex
  ;; Support LaTeX editing.
  ;;
  ;; For more information, see
  ;; https://www.gnu.org/software/auctex/index.html
  :ensure auctex
  :mode ("\\.tex\\'" . latex-mode)
  :hook ((LaTeX-mode . turn-on-reftex)             ; turn on reftex minor mode
         (LaTeX-mode . company-mode)               ; turn on company mode
         (LaTeX-mode . display-line-numbers-mode)) ; enable line numbers on left
  :custom
  (TeX-auto-save t)
  (TeX-master nil) ; prompt for master file for multifile document structure
  (TeX-parse-self t))

(use-package reftek
  ;; Support LaTeX labels, references, and citations.
  ;;
  ;; For more information, see
  ;; https://www.gnu.org/software/auctex/manual/reftex.pdf
  :defer t
  :commands turn-on-reftek
  :hook ((LaTeX-mode . (LaTeX-add-environments '("definition" LaTeX-env-label)))) ; auto create
  :custom
  ;; This setting configures additional settings from AUCTeX that are set for
  ;; many popular packages (i.e., an easy configuration).
  (reftex-plug-into-AUCTeX t)

  ;; Custom environments RefTeX should consider.
  ;;
  (reftex-label-alist
   '(("definition" ?d "def:" "~\\ref{%s}" t ("definition", "def.")))))

;;; latex.el ends here
