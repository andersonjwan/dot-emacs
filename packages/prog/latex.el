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

  ;; Add custom `definition' environment to `auctex'.
  ;;
  ;; This additionally insert the label automatically whenever the environment is
  ;; created through `auctex' by `reftek'.
  :hook ((LaTeX-mode . (lambda () (LaTeX-add-environments '("definition" LaTeX-env-label))
			 (add-to-list 'LaTeX-label-alist '("definition" . "def:"))))

	 ;; Add the `cleveref' package macros to `reftex' referencing style list.
	 ;;
	 ;; For more information, see:
	 ;; https://tex.stackexchange.com/a/119273/263214
	 ;;
	 ;; This additional adds it to the TeX symbols, so these references may
	 ;; also then be referred back to by `reftex'.
	 (LaTeX-mode . (lambda ()
			 (if (boundp 'reftex-ref-style-alist)
			     (add-to-list 'reftex-ref-style-alist
					  '("Cleveref" "cleveref"
					    (("\\cref" ?c) ("\\Cref" ?C) ("\\cpageref" ?d) ("\\Cpageref" ?D)))))
			 (reftex-ref-style-activate "Cleveref")
			 (TeX-add-symbols
			  '("cref" TeX-arg-ref)
			  '("Cref" TeX-arg-ref)
			  '("cpageref" TeX-arg-ref)
			  '("Cpageref" TeX-arg-ref)))))
  :custom
  ;; This setting configures additional settings from AUCTeX that are set for
  ;; many popular packages (i.e., an easy configuration).
  (reftex-plug-into-AUCTeX t)

  ;; Custom environments RefTeX should resolve.
  (reftex-label-alist
   '(("definition"   ?d "def:"  "~\\ref{%s}" nil ("definition"   "def.") -2))))

;;; latex.el ends here
