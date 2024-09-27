;;; settings.el --- General settings for Emacs -*- lexical-binding: t; -*-

;;; Copyright (C) 2022 Jacob Anderson

;; Author: Jacob Anderson <andersonjwan@gmail.com>
;; Created: 20 Jun 2022
;; Keywords: customization, dot-emacs, configuration, custom
;; Homepage: https://github.com/andersonjwan/.emacs.d

;;; Commentary:
;;
;; This file contains general setting customizations for
;; my own custom Emacs installation.

;;; Code:

;;; Global Variables
;; Customized `dired-mode' output.
;;
;; The `dired-mode' takes advantange of the `/usr/bin/ls' command to display
;; directory contents. Therefore, to modify the output, the flags/options present
;; for the called commmand are set.
;;
;; This setting order folders first followed by files.
(setq dired-listing-switches "-l --all --group-directories-first")

;;; Enabled Functions
;; Enable `narrow-to-*' functionality. This includes narrowing to region, defun,
;; and page.
(put 'narrow-to-defun 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)

;;; Backup Settings

;; Create and set backup path
(defvar settings--backup-path (concat user-emacs-directory "backups"))
(unless (file-directory-p settings--backup-path)
  (make-directory settings--backup-path t))

(setq backup-directory-alist `(("." . ,settings--backup-path)))

;; Set backup configurations
(setq make-backup-files t           ; make backup files
      backup-by-copying t           ; copy file to backup directory
      version-control t             ; maintain versions of the same file
      delete-old-versions t         ; remove older backups
      delete-by-moving-to-trash nil ; send files to system trash
      kept-old-versions 8           ; old versions to keep
      kept-new-versions 12          ; new versions to keep
      auto-save-default t           ; auto-save files
      auto-save-timeout 30          ; save buffers after t idle seconds
      auto-save-interval 500)       ; save buffers after n keystrokes

;; Programming Settings
(add-hook 'prog-mode-hook #'display-line-numbers-mode) ; display line numbers
(add-hook 'prog-mode-hook #'column-number-mode) ; display column numbers
(setq-default indent-tabs-mode nil) ; disable tabs as indentation

;;; settings.el ends here
