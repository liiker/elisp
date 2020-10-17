;;; zzld-java.el --- Emacs-lisp tips                    -*- lexical-binding: t; -*-

;; Copyright (C) 2020  Wentao Yang

;; Author: Feng Shu <nx.adamyang@gmail.com>
;; Keywords: java, devtools

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(setq java-lombok-path
      "/Users/mac/.m2/repository/org/projectlombok/lombok/1.18.12/lombok-1.18.12.jar")

(setq lsp-java-vmargs
            `("-noverify"
              "-Xmx1G"
              "-XX:+UseG1GC"
              "-XX:+UseStringDeduplication"
              ,(concat "-javaagent:" java-lombok-path)
              ,(concat "-Xbootclasspath/a:" java-lombok-path)))


(provide 'zzld-java)
;;; zzld-java.el ends here
