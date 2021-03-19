;;; better-comments.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2021 Ethan Levy
;;
;; Author: Ethan Levy <https://github.com/3174N>
;; Maintainer: Ethan Levy <3174N@protonmail.com>
;; Created: March 19, 2021
;; Modified: March 19, 2021
;; Version: 0.0.1
;; Homepage: https://github.com/3174N/better-comments
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  A better-comments plugin for GNU emacs.
;;
;;; Code:

(defface font-lock-comment-strike
'((t (:strike-through t)))
"For strike-through comments")

(defface font-lock-comment-important
'((t (:foreground "#00ff00")))
"For important")

(defface font-lock-comment-todo
'((t (:foreground "#ff0000")))
"For todo comments")


(defun add-custom-keyw()
"Add a few special keywords."
(font-lock-add-keywords
nil
'(("\\s<+[[:space:]]~[[:space:]]+\\(.*?\\)[[:space:]]*\\s>" 1 'font-lock-comment-strike prepend)
("\\s<+[[:space:]]TODO:[[:space:]]+\\(.*?\\)[[:space:]]*\\s>" 1 'font-lock-comment-todo prepend)
("\\s<+[[:space:]]\\*[[:space:]]+\\(.*?\\)[[:space:]]*\\s>" 1 'font-lock-comment-important prepend))))

(add-hook 'prog-mode-hook #'add-custom-keyw)

(provide 'better-comments)
;;; better-comments.el ends here
