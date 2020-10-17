
;;; zzld-org.el --- My org-mode config

;; Copyright (C) 2020  Wentao Yang

;; Author: Feng Shu <nx.adamyang@gmail.com>
;; Keywords: org

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

;; 设置默认 Org Agenda 文件目录
(with-eval-after-load 'org
    (org-babel-do-load-languages
    'org-babel-load-languages
    '((ruby . t)
      (python . t)
      (elixir . t)
      (sql . t)
      (shell . t)
      ))


    (setq org-ellipsis "▼")
    ;; (setq org-directory (expand-file-name "~/org")
    (setq org-agenda-files (list "~/org/GTDs/inbox.org"))

    (setq org-todo-keywords
        '((sequence "TODO(t)" "|" "DONE(d)")
          (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
          (sequence "|" "CANCELED(c)")))

    (setq org-confirm-babel-evaluate nil
        org-src-fontify-natively t
        org-src-tab-acts-natively t)

    (setq org-log-done 'time)
    ;; (setq org-log-done 'note)

    ;; (add-hook (quote org-mode-hook)
    ;;       (lambda ()
    ;;         (org-shifttab 2)))

   (org-shifttab 2)

   (setq org-capture-templates
         '(("t" "Todo" entry (file+datetree "~/org/GTDs/inbox.org")
            "* TODO %?\n\tRecorded on %U\n%i\n %a")
           ("s" "Shopping" entry (file+datetree "~/org/Journals/shopping.org")
            "* %?\nRecorded on %U\n%i\n%a")
           ("o" "Other" entry (file+datetree "~/org/GTDs/other.org")
            "* %?\nRecorded on %U\n%i\n%a")
           ("j" "Journal" entry (file+datetree "~/org/Journals/notes.org")
            "* %?\nEntered on \t%U\n\t%i\n%a"))))


;; 设置 org-agenda 打开快捷键
(global-set-key (kbd "C-c a") 'org-agenda)

(provide 'zzld-org)
;;; zzld-org.el ends here
