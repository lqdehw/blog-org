(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" default)))
 '(display-time-mode t)
 '(git-gutter:handled-backends (quote (svn hg git)))
 '(global-display-line-numbers-mode t)
 '(menu-bar-mode nil)
 '(session-use-package t nil (session))
 '(tool-bar-mode nil)
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Microsoft YaHei" :foundry "outline" :slant normal :weight normal :height 143 :width normal)))))
(require 'ox-publish)
  (setq org-publish-project-alist
        '(
          ;; 把各部分的配置文件写到这里面来
          ("blog-notes"
            :base-directory "D:/org/notes"
            :base-extension "org"
            :publishing-directory "D:/org/public_html"
            :recursive t
            :publishing-function org-html-publish-to-html
            :headline-levels 4             ; Just the default for this project.
            :auto-preamble t
            :section-numbers nil
            :author "youname"
            :email "example@test.com"
            :auto-sitemap t                ; Generate sitemap.org automagically...
            :sitemap-filename "sitemap.org"  ; ... call it sitemap.org (it's the default)...
            :sitemap-title "Sitemap"         ; ... with title 'Sitemap'.
            :sitemap-sort-files anti-chronologically
            :sitemap-file-entry-format "%d %t"
            :html-head "<link rel=\"stylesheet\" type=\"text/css\" href=\"D:/org/notes/css/worg.CSS\"/>"
            ;;:HTML-HEAD,RAVIPRO-HTML-HEAD
            :HTML-LINK-UP "SITEMAP.HTML"
            :HTML-LINK-HOME "SITEMAP.HTML"
            ;;Only export setion between <body></body>
            :body-only t
            )
          ("blog-static"
           :base-directory "D:/org/notes"
           :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
           :publishing-directory "D:/org/public_html/"
           :recursive t
           :publishing-function org-publish-attachment
           )
          ("blog" :components ("blog-notes" "blog-static"))
       ))
(set-language-environment "utf-8")
(set-frame-position (selected-frame) 100 100)
(set-frame-width (selected-frame) 110)
(set-frame-height (selected-frame) 25)