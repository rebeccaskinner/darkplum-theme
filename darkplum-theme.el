;;; darkplum-theme.el --- A Dark Plum Theme

;; Copyright 2021 Rebecca Skinner, All rights reserved
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;; Author: Rebecca Skinner <rebecca@rebeccaskinner.dev>
;; Version: 1.0.0
;; Package-Requires: ((emacs "24"))
;; URL: https://github.com/rebeccaskinner/darkplum-theme
;; Keywords: theme, dark, purple, plum

;;; Commentary:
;; darkplum, A Dark Plum Theme.

;;; Code:
;;
;; Based on
;;
;; Rebecca: https://github.com/vic/rebecca-theme

(deftheme darkplum "A dark plum theme.")

(let*
  (
    (class
      '((class color) (min-colors 89)))

    ;; default colors
    (background "#2a2035") ; Dark plum color as the default background
    (foreground "#b0b0b0") ; Light grey color as the default foreground
    (cursor     "#ffc0cb") ; X11 pink

    ;; alternate defaults
    (dark-background  "#201520") ; slightly darker default background
    (light-background "#695085")
    (dark-foreground  "#441177")
    (light-foreground "#ffbff2")

    ;; modeline colors
    (modeline-background "#262626")
    (modeline-foreground "#dda0dd")
    (modeline-inactive-foreground "#edcced")
    (modeline-error-background "#380308")
    (modeline-error-foreground "#ddbbbb")

    ;; common programming colors
    (keyword "#7643a9")
    (comment "#5a5075")
    (identifier "#dda0dd") ; x11 "plum"
    (operator "#ffc0cb")   ; x11 "pink"
    (error-color "#871b60")
    (string-color "#ffc0cb") ; x11 "thistle"
    (function-color "#da70d6") ; x11 "orchid"
    (type-color "#A020F0") ; x11 "purple"
    ;;

    )
  (custom-theme-set-faces
    'darkplum
    `(default
       (
         (((class color) (min-colors 4096))
           (:foreground ,foreground :background ,background))
         (((class color) (min-colors 256))
           (:foreground ,foreground :background ,background))
         (,class
           (:foreground ,foreground :background ,background))))

    ;; general editing faces

    `(cursor              ((,class (:background ,cursor))))
    `(header-line         ((,class (:foreground ,foreground))))
    `(fringe              ((,class (:background ,background))))
    `(highlight           ((,class (:foreground ,light-foreground :background ,light-background))))
    `(region              ((,class (:background ,light-background))))
    `(isearch             ((,class (:foreground ,light-foreground :background ,dark-background))))
    `(lazy-highlight      ((,class (:background ,light-background))))
    `(trailing-whitespace ((,class (:background ,error-color))))

    ;; modeline faces
    `(mode-line           ((,class (:bold t :background ,modeline-background :foreground ,modeline-foreground))))
    `(mode-line-inactive  ((,class (:background ,modeline-background :foreground ,modeline-inactive-foreground))))
    `(compilation-mode-line-fail ((,class (:background ,modeline-error-background :foreground ,modeline-error-foreground))))

    ;; minibuffer faces
    `(minibuffer-prompt ((,class (:bold t :foreground ,light-foreground))))

    ;; font lock faces
    `(font-lock-builtin-face ((,class (:foreground ,keyword))))
    `(font-lock-comment-face ((,class (:foreground ,comment))))
    `(font-lock-doc-face ((,class (:bold t :foreground ,comment))))
    `(font-lock-constant-face ((,class (:bold t))))
    `(font-lock-function-name-face ((,class (:bold t :foreground ,function-color))))
    `(font-lock-variable-name-face ((,class (:foreground ,identifier))))
    `(font-lock-type-face ((,class (:bold t :foreground ,type-color))))
    `(font-lock-keyword-face ((,class (:bold t :foreground ,keyword))))
    `(font-lock-warning-face ((,class (:underline t))))
    `(font-lock-preprocessor-face ((,class (:foreground ,light-foreground))))
    `(font-lock-string-face ((,class (:foreground ,string-color))))

    ;; links
    `(link ((,class (:underline t :foreground ,light-foreground))))
    `(link-visited ((,class (:underline t))))

    ;; line numbers
    `(line-number-major-tick ((,class (:bold t :background ,background :foreground ,foreground))))
    `(line-number-minor-tick ((,class (:background ,background :foreground ,foreground))))

    ;; rainbow delimiters
    `(rainbow-delimiters-depth-1 ((,class (:background ,background :foreground ,foreground))))
    `(rainbow-delimiters-depth-2 ((,class (:background ,background :foreground ,light-foreground))))
    `(rainbow-delimiters-depth-3 ((,class (:background ,background :foreground ,dark-foreground))))
    `(rainbow-delimiters-depth-4 ((,class (:background ,background :foreground ,"red"))))
    `(rainbow-delimiters-depth-4 ((,class (:background ,background :foreground ,"orange"))))
    `(rainbow-delimiters-depth-6 ((,class (:background ,background :foreground ,"yellow"))))
    `(rainbow-delimiters-depth-7 ((,class (:background ,background :foreground ,"green"))))
    `(rainbow-delimiters-depth-8 ((,class (:background ,background :foreground ,"blue"))))
    `(rainbow-delimiters-depth-9 ((,class (:background ,background :foreground ,"purple"))))

    `(info-title-1 ((,class (:height 2.0  :bold t :background ,background :foreground ,light-foreground))))
    `(info-title-1 ((,class (:height 1.5  :bold t :background ,background :foreground ,light-foreground))))
    `(info-title-1 ((,class (:height 1.25 :bold t :background ,background :foreground ,light-foreground))))
    `(info-title-1 ((,class (:height 1.0  :bold t :background ,background :foreground ,light-foreground))))

    (custom-theme-set-variables
      'darkplum
      `(ansi-color-names-vector []))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'darkplum)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; darkplum-theme.el ends here
