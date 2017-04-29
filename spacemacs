;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     sql
     windows-scripts
     python
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     auto-completion
     ;; better-defaults
     colors
     csharp
     ranger
     deft
     html
     haskell
     (erc :variables
          erc-server-list
          '(("irc.freenode.net"
             :port "6697"
             :ssl t
             :nick "jredville")))
             ;;:password (getenv "FREENODE_SECRETS"))))
     dash
     emacs-lisp
     git
     github
     markdown
     (org :variables
          org-enable-reveal-js-support t
          org-enable-github-support t
          org-projectile-file "TODOs.org")
     (go :variables
         go-tab-width 2
         go-use-gometalinter t)
     javascript
     react
     python
     docker
     lua
     elixir
     elm
     erlang
     rust
     ruby
     ruby-on-rails
     yaml
     tmux
     php
     c-c++
     swift
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom
            shell-default-shell 'ansi-term
            shell-default-term-shell "zsh")
     osx
     emoji
     games
     xkcd
     vagrant
     evil-snipe
     spotify
     ;; unimpaired
     shell-scripts
     themes-megapack
     version-control
     ;; spell-checking
     syntax-checking)

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      go-dlv
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(zenburn
                         solarized-dark
                         spacemacs-dark
                         leuven
                         monokai)
   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   ;; dotspacemacs-default-font '("Source Code Pro for Powerline"
   dotspacemacs-default-font `("Roboto Mono for Powerline"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non-nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ t
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non-nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non-nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non-nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non-nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non-nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.3
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil
   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 70
   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non-nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'changed
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;; global toggles
  (golden-ratio-mode)

  (setq-default js2-basic-offset 2
                js-indent-level 2
                web-mode-code-indent-offset 2
                web-mode-indent-style 2
                web-mode-markup-indent-offset 2
                ruby-version-manager 'rbenv
                deft-directory "~/Dropbox/Org/deft"
                helm-deft-dir-list '("~/Dropbox/Org/deft")
                omnisharp-server-executable-path "/Users/jdeville/proj/omnisharp-server/OmniSharp.Tests/bin/Debug/OmniSharp.exe"
                powerline-default-separator 'utf-8)

  (setq create-lockfiles nil
        evil-want-fine-undo "Yes"
        gofmt-command "goimports"
        flycheck-gometalinter-vendor t
        flycheck-gometalinter-deadline "10s"
        flycheck-gometalinter-fast t
        flycheck-gometalinter-tests t)

  ;; Enable mouse support
  (unless window-system
    (global-set-key (kbd "<mouse-4>") 'scroll-down-line)
    (global-set-key (kbd "<mouse-5>") 'scroll-up-line))
  (global-set-key (kbd "<C-S-right>") 'next-buffer)
  (global-set-key (kbd "<C-S-left>") 'previous-buffer)

  ;; - for going to deer
  (define-key evil-normal-state-map (kbd "-") 'deer)

  ;; Rebind surround to S instead of s, so we can use s for avy
  (evil-define-key 'operator evil-surround-mode-map "S" 'evil-surround-edit)
  (evil-define-key 'visual evil-surround-mode-map "S" 'evil-surround-region)

  ;; avy setup
  (setq avy-timeout-seconds 0.35
        avy-all-windows 'all-frames)
  (evil-define-key '(normal motion) global-map "s" 'avy-goto-char-timer)
  (evil-define-key '(visual operator) evil-surround-mode-map "s" 'avy-goto-char-timer)

  (evil-define-key '(normal motion visual operator) global-map (kbd "C-;") 'avy-goto-line)
  (evil-define-key 'insert global-map (kbd "<s-return>") 'evil-open-below)


  (setq avy-all-windows nil)

  ;; OS X trash setup
  (if (executable-find "trash")
      (defun system-move-file-to-trash (file)
        "Use `trash' to move FILE to the system trash.
Can be installed with `brew install trash', or `brew install osxutils`''."
        (call-process (executable-find "trash") nil 0 nil file))
    ;; regular move to trash directory
    (setq trash-directory "~/.Trash/emacs"))

  (with-eval-after-load 'org
    (add-to-list 'org-babel-load-languages
                 '(ruby . t)
                 '(js . t)
                 ;; '(python . t)
                 ;; '(clojure . t)
                 ;; '(calc . t)
                 ;; '(sh . t)
  ;;                '(awk . t)
  ;;                '(sed . t)
  ;;                '(sql . t)
  ;;                '(sqlite . t)
  ;;                '(redis . t)
  ;;                '(mongo .t)
  ;;                '(coffee . t)
  ;;                '(http . t)
  ;;                '(restclient . t)
                 ;; '(org . t)
                 ;; '(screen . t)
                 ))

  (defun helm-open-buffers-in-windows (buffers)
    (if (= (length buffers) 1) (set-window-buffer nil (car buffers))
      (let ((cur-win 1)
            (num-windows (length (window-list))))
        (cl-loop for buffer in buffers
                 do (when (<= cur-win num-windows)
                      (set-window-buffer (winum-get-window-by-number cur-win) buffer)
                      (setq cur-win (+ cur-win 1)))))))

  (defun helm-find-files-windows (candidate)
    (let* ((files (helm-marked-candidates))
           (buffers (mapcar 'find-file-noselect files)))
      (helm-open-buffers-in-windows buffers)))

  (defun helm-find-buffers-windows (candidate)
    (let ((buffers (helm-marked-candidates)))
      (helm-open-buffers-in-windows buffers)))

  (defun helm-open-in-vertical-split (candidate)
    (progn
      (split-window-right-and-focus)
      (set-window-buffer nil (car helm-marked-candidates))))

  (with-eval-after-load 'helm-projectile
    (let ((buffer-lists '(helm-source-projectile-buffers-list helm-source-buffers-list))
          (file-lists '(helm-source-projectile-files-list helm-source-files-in-current-dir)))
      (cl-loop for buffer in buffer-lists
               do (helm-add-action-to-source "open buffers in windows" 'helm-find-buffers-windows buffer-lists))
      (cl-loop for file in file-lists
               do (helm-add-action-to-source "open files in windows" 'helm-find-files-windows file-lists))))

  ;; (define-key helm-projectile-find-file-map (kbd "C-t")
  ;;   (lambda ()(interactive)
  ;;     (helm-exit-and-execute-action 'helm-find-files-windows)))

  ;;(define-key evil-motion-state-map (kbd "<down-mouse-1>") nil)
  ;; CtrlP
  ;; (setq helm-for-files-preferred-list '(helm-source-buffers-list
  ;;                                       helm-source-buffer-not-found
  ;;                                       helm-source-projectile-projects
  ;;                                       helm-source-projectile-files-list
  ;;                                       helm-source-recentf
  ;;                                       helm-source-bookmarks
  ;;                                       helm-source-file-cache
  ;;                                       ;; helm-source-files-in-current-dir
  ;;                                       ))

  ;; (define-key evil-normal-state-map (kbd "C-p") 'helm-multi-files)

  ;; (defun jim/make-vc ()
  ;; makes vertical cursors"
  ;;    (interactive "r")
  ;;    (evil-mc-pause-cursors)
  ;;    (let ((start-row (line-number-at-pos p1))
  ;;          (end-row (line-number-at-pos p2))
  ;;          (start-col (min (column-number-at-pos p1) (column-number-at-pos p2))))
  ;;      (save-excursion
  ;;        (goto-char p1)
  ;;        (move-to-column start-col)
  ;;        (while (< start-row end-row)
  ;;          (call-interactively 'evil-mc-make-cursor-here)
  ;;          (forward-line 1)
  ;;          (move-to-column start-col)
  ;;          (setq start-row (+ start-row 1))))
  ;;      (call-interactively 'evil-exit-visual-state)
  ;;      (call-interactively 'evil-mc-resume-cursors)
  ;;      (goto-char p2)
  ;;      (move-to-column start-col)))

  ;; (defun subst-word (&optional arg)
  ;;   "Insert ':%s/\<\>//gc' and move 5 chars to the left so the point stays between the char '<' and '>'."
  ;;   (interactive "p")
  ;;   (evil-normal-state)
  ;;   (evil-ex '("%s/\\<\\>//gc" . 7)))

  ;; (global-set-key (kbd "s-:") 'subst-word)

  ;; (defconst my-ycmd-packages
  ;;   '(ycmd))

  ;; (defun my-ycmd/post-init-ycmd ()
  ;;   ;; Setup the key bindings
  ;;   (dolist (mode '(c-mode c++-mode))
  ;;     (my-ycmd/keybindings mode))

  ;;   ;; Making emacs-ycmd quieter
  ;;   (setq url-show-status nil
  ;;         request-message-level -1)

  ;;   (setq company-show-numbers t)

  ;;   (set-variable 'ycmd-server-command '("python3"))
  ;;   (add-to-list  'ycmd-server-command  (expand-file-name "~/ycmd/ycmd") t)

  ;;   ;; whitelist the configuration files in the folder
  ;;   (set-variable 'ycmd-extra-conf-whitelist '("~/development/*" "~/builds/*"))

  ;;   (setq ycmd-parse-conditions '(save mode-enabled)))
  ;; (defconst my-ycmd-packages
  ;;   '(ycmd))

  ;; (defun my-ycmd/post-init-ycmd ()
  ;;   ;; Setup the key bindings
  ;;   (dolist (mode '(c-mode c++-mode))
  ;;     (my-ycmd/keybindings mode))

  ;;   ;; Making emacs-ycmd quieter
  ;;   (setq url-show-status       nil)
  ;;   (setq ycmd-confirm-fixit    nil)
  ;;   ;; (setq request-message-level -1)
  ;;   (setq company-show-numbers  t)

  ;;   (setq ycmd-server-command (list "python3" (file-truename "~/ycmd/ycmd")))

  ;;   ;; whitelist the configuration files in the folder
  ;;   (setq ycmd-extra-conf-whitelist '(list (file-truename "~/builds/*") (file-truename "~/development/*"))))
  )


;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (mmt symon string-inflection powerline rebecca-theme rake inflections pcre2el spinner alert log4e gntp shut-up org-plus-contrib markdown-mode skewer-mode simple-httpd multiple-cursors js2-mode hydra parent-mode multi window-purpose imenu-list projectile request haml-mode go-rename gitignore-mode fringe-helper git-gutter+ git-gutter gh marshal logito pcache ht seq pos-tip flycheck flx magit git-commit with-editor smartparens iedit anzu evil goto-chg undo-tree highlight json-mode tablist magit-popup docker-tramp json-snatcher json-reformat diminish autothemer csharp-mode web-completion-data dash-functional tern go-mode ghc haskell-mode rust-mode inf-ruby browse-at-remote bind-map bind-key yasnippet packed anaconda-mode pythonic f s company dash elixir-mode pkg-info epl helm avy helm-core async auto-complete popup swift-mode php-extras disaster company-c-headers cmake-mode clang-format phpunit phpcbf php-auto-yasnippets drupal-mode php-mode zonokai-theme zenburn-theme zen-and-art-theme yapfify yaml-mode xterm-color xkcd ws-butler winum which-key web-mode web-beautify volatile-highlights vi-tilde-fringe vagrant-tramp vagrant uuidgen use-package underwater-theme ujelly-theme typit twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme toml-mode toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit sunny-day-theme sudoku sublime-themes subatomic256-theme subatomic-theme sql-indent spotify spaceline spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slim-mode shell-pop seti-theme scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe reverse-theme reveal-in-osx-finder restart-emacs rbenv ranger rainbow-mode rainbow-identifiers rainbow-delimiters railscasts-theme racer pyvenv pytest pyenv-mode py-isort purple-haze-theme pug-mode projectile-rails professional-theme powershell popwin planet-theme pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pbcopy pastels-on-dark-theme paradox pacmacs ox-reveal ox-gfm osx-trash osx-dictionary orgit organic-green-theme org-projectile org-present org-pomodoro org-download org-bullets open-junk-file omtose-phellack-theme omnisharp oldlace-theme occidental-theme obsidian-theme ob-elixir noctilux-theme niflheim-theme neotree naquadah-theme mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme mmm-mode minitest minimal-theme material-theme markdown-toc majapahit-theme magithub magit-gitflow magit-gh-pulls madhat2r-theme macrostep lush-theme lua-mode lorem-ipsum livid-mode live-py-mode linum-relative link-hint light-soap-theme less-css-mode launchctl js2-refactor js-doc jbeans-theme jazz-theme ir-black-theme intero insert-shebang inkpot-theme info+ indent-guide hy-mode hungry-delete htmlize hlint-refactor hl-todo hindent highlight-parentheses highlight-numbers highlight-indentation hide-comnt heroku-theme hemisu-theme help-fns+ helm-themes helm-swoop helm-spotify helm-pydoc helm-purpose helm-projectile helm-mode-manager helm-make helm-hoogle helm-gitignore helm-flx helm-descbinds helm-dash helm-css-scss helm-company helm-c-yasnippet helm-ag hc-zenburn-theme haskell-snippets gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio go-guru go-eldoc go-dlv gnuplot github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md gandalf-theme fuzzy flycheck-rust flycheck-pos-tip flycheck-mix flycheck-haskell flycheck-gometalinter flycheck-elm flycheck-credo flx-ido flatui-theme flatland-theme fish-mode firebelly-theme fill-column-indicator feature-mode farmhouse-theme fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-snipe evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu espresso-theme eshell-z eshell-prompt-extras esh-help erlang erc-yt erc-view-log erc-terminal-notifier erc-social-graph erc-image erc-hl-nicks emoji-cheat-sheet-plus emmet-mode elm-mode elisp-slime-nav dumb-jump dracula-theme dockerfile-mode docker django-theme diff-hl deft dash-at-point darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cython-mode cyberpunk-theme company-web company-tern company-statistics company-shell company-go company-ghci company-ghc company-emoji company-cabal company-anaconda column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-identifiers-mode coffee-mode cmm-mode clues-theme clean-aindent-mode chruby cherry-blossom-theme cargo busybee-theme bundler bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme auto-yasnippet auto-highlight-symbol auto-compile apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes alchemist aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell 2048-game))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ob-elixir zonokai-theme zen-and-art-theme zeal-at-point yapfify yaml-mode xterm-color xkcd ws-butler winum which-key web-mode web-beautify volatile-highlights vi-tilde-fringe vagrant-tramp vagrant uuidgen use-package underwater-theme ujelly-theme typit mmt twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme toml-mode toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit swift-mode sunny-day-theme sudoku sublime-themes subatomic256-theme subatomic-theme sql-indent spotify spaceline powerline spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slim-mode shell-pop seti-theme scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe reverse-theme reveal-in-osx-finder restart-emacs rbenv ranger rainbow-mode rainbow-identifiers rainbow-delimiters railscasts-theme racer pyvenv pytest pyenv-mode py-isort purple-haze-theme pug-mode projectile-rails rake inflections professional-theme powershell popwin planet-theme pip-requirements phpunit phpcbf php-extras php-auto-yasnippets phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pcre2el pbcopy pastels-on-dark-theme paradox spinner pacmacs ox-reveal ox-gfm osx-trash osx-dictionary orgit organic-green-theme org-projectile org-present org-pomodoro alert log4e gntp org-download org-bullets open-junk-file omtose-phellack-theme omnisharp shut-up oldlace-theme occidental-theme obsidian-theme org-plus-contrib noctilux-theme niflheim-theme neotree naquadah-theme mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme mmm-mode minitest minimal-theme material-theme markdown-toc markdown-mode majapahit-theme magit-gitflow magit-gh-pulls madhat2r-theme macrostep lush-theme lua-mode lorem-ipsum livid-mode skewer-mode simple-httpd live-py-mode linum-relative link-hint light-soap-theme less-css-mode launchctl js2-refactor multiple-cursors js2-mode js-doc jbeans-theme jazz-theme ir-black-theme intero insert-shebang inkpot-theme info+ indent-guide hydra hy-mode hungry-delete htmlize hlint-refactor hl-todo hindent highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt heroku-theme hemisu-theme help-fns+ helm-themes helm-swoop helm-spotify multi helm-pydoc helm-projectile helm-mode-manager helm-make projectile helm-hoogle helm-gitignore request helm-flx helm-descbinds helm-dash helm-css-scss helm-company helm-c-yasnippet helm-ag hc-zenburn-theme haskell-snippets haml-mode gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio go-guru go-eldoc go-dlv gnuplot gitignore-mode github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gist gh marshal logito pcache ht gh-md gandalf-theme fuzzy flycheck-rust seq flycheck-pos-tip pos-tip flycheck-mix flycheck-haskell flycheck-gometalinter flycheck-elm flycheck-credo flycheck flx-ido flx flatui-theme flatland-theme fish-mode firebelly-theme fill-column-indicator feature-mode farmhouse-theme fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-snipe evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit magit git-commit with-editor evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight espresso-theme eshell-z eshell-prompt-extras esh-help erlang erc-yt erc-view-log erc-social-graph erc-image erc-hl-nicks emoji-cheat-sheet-plus emmet-mode elm-mode elisp-slime-nav dumb-jump drupal-mode php-mode dracula-theme dockerfile-mode docker json-mode tablist magit-popup docker-tramp json-snatcher json-reformat django-theme disaster diminish diff-hl deft darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cython-mode cyberpunk-theme csharp-mode company-web web-completion-data company-tern dash-functional tern company-statistics company-shell company-go go-mode company-ghci company-ghc ghc haskell-mode company-emoji company-cabal company-c-headers company-anaconda column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-identifiers-mode coffee-mode cmm-mode cmake-mode clues-theme clean-aindent-mode clang-format chruby cherry-blossom-theme cargo rust-mode busybee-theme bundler inf-ruby bubbleberry-theme birds-of-paradise-plus-theme bind-map bind-key badwolf-theme auto-yasnippet yasnippet auto-highlight-symbol auto-compile packed apropospriate-theme anti-zenburn-theme anaconda-mode pythonic f ample-zen-theme ample-theme alect-themes alchemist s company dash elixir-mode pkg-info epl aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core async ac-ispell auto-complete popup 2048-game zenburn-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:foreground "#DCDCCC" :background "#3F3F3F")))))
