
(add-to-list 'load-path (expand-file-name "~/.emacs.d/site-lisp/org-8.0.1/contrib/lisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/site-lisp/org-8.0.1/lisp"))

(require 'org)

(defun publish (to-dir)
  (setq org-export-allow-bind-keywords t)
  (let* ((org-export-allow-BIND t)
         (src-dir (expand-file-name "."))
         (publish-dir (expand-file-name to-dir))
         (org-publish-project-alist
          `(("org-notes"
             :base-directory ,src-dir
             :base-extension "org"
             :publishing-directory ,publish-dir
             :htmlized-source t
             :recursive t
             :publishing-function org-html-publish-to-html
             :headline-levels 4             ; Just the default for this project.
             :auto-preamble t)
            ("org-static"
             :base-directory ,src-dir
             :base-extension 
             "html\\|shtml\\|css\\|js\\|png\\|jpg\\|gif\\|ico\\|pdf\\|mp3\\|ogg\\|swf\\|pl\\|php"
             :publishing-directory ,publish-dir
             :recursive t
             :publishing-function org-publish-attachment)
            ("org" :components ("org-static" "org-notes")))))
    (org-publish-all)))

(defun publish-to-target-dir ()
  (publish "./target"))

(defun publish-to-public-html ()
  (publish "~/public_html"))


