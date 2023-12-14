;;; docker.el --- YAML package configurations for Emacs -*- lexical-binding: t; -*-

;;; Copyright (C) 2023 Jacob Anderson

;; Author: Jacob Anderson <andersonjwan@gmail.com>
;; Created: 13 December 2023
;; Keywords: packages, dot-emacs, configuration, custom, docker
;; Homepage: https://github.com/andersonjwan/.emacs.d

;;; Commentary:
;;
;; This file contains package configurations for my own custom
;; Emacs installation specific to Docker.

;;; Code:

;;; Package Management

(use-package dockerfile-mode
  ;; Support editing of Dockerfile code.
  ;;
  ;; For more information, see
  ;; https://github.com/spotify/dockerfile-mode
  :ensure t
  :mode ("\\Dockerfile\\'" . dockerfile-mode))

;;; docker.el ends here
