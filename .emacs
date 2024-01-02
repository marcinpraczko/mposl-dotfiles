;; 
;; ======================================================================
;; General
;; ======================================================================

(require 'yasnippet)
(yas-global-mode 1)

(require 'editorconfig)
(editorconfig-mode 1)

;;
;; ======================================================================
;; ORG-MODE
;; ======================================================================
;; http://orgmode.org/guide/Activation.html#Activation
(global-set-key (kbd "C-c a") 'org-agenda)

;; https://sachachua.com/blog/2015/02/learn-take-notes-efficiently-org-mode/
(global-set-key (kbd "C-c o") (lambda () (interactive) (find-file "~/{{ full_path_to_default_org_file }}")))

;; Add logging time when task is marked as DONE
(setq org-log-done 'time)

;; Set custom agenda - no clock times (with suffix: CLOCKED)
(setq org-agenda-custom-commands
    '(("n" "Agenda without clock items"
          ((agenda ""
               ((org-agenda-entry-types '(:timestamp :sexp :scheduled))
                   (org-agenda-skip-function
                       '(org-agenda-skip-entry-if 'regexp "CLOCK")))))
          ))
    )
