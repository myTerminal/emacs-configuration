(defun myTerminal/set-up-package-lists ()
  (when (not package-archive-contents)
    (package-refresh-contents))

  (defvar myTerminal/packages
    '((multiple-cursors nil)
      (ace-jump-mode nil)
      (web-mode nil)
      (js2-mode nil)
      (ac-js2 nil)
      (csharp-mode nil)
      (markdown-mode nil)
      (less-css-mode nil)
      (scss-mode nil)
      (sass-mode nil)
      (auto-complete nil)
      (autopair nil)
      (nlinum nil)
      (undo-tree nil)
      (ztree nil)
      (material-theme nil)
      (spacemacs-theme nil)
      (meta-presenter nil)
      (myterminal-controls nil)
      (theme-looper nil)
      (helm t)
      (smex t)
      (powerline t)
      (switch-window t)
      (buffer-move t)
      (haskell-mode t)
      (latex-preview-pane t)
      (column-enforce-mode t)
      (rainbow-delimiters t)
      (anzu t)
      (command-log-mode t)
      (minimap t)
      (magit t)
      (skewer-mode t)
      (restclient t)
      (mew t)
      (jabber t)
      (marmalade-client t)
      (alpha t)))

  (mapc (lambda (p)
          (package-install (car p)))
        myTerminal/packages))
