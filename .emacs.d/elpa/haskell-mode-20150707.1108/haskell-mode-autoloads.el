;;; haskell-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "ghc-core" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/ghc-core.el"
;;;;;;  "e9265108cb87fc0d7060c8c97d5a43e4")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/ghc-core.el

(autoload 'ghc-core-create-core "ghc-core" "\
Compile and load the current buffer as tidy core.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.hcr\\'" . ghc-core-mode))

(add-to-list 'auto-mode-alist '("\\.dump-simpl\\'" . ghc-core-mode))

(autoload 'ghc-core-mode "ghc-core" "\
Major mode for GHC Core files.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "ghci-script-mode" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/ghci-script-mode.el"
;;;;;;  "9be9c8b61630717784885784bc50fcd4")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/ghci-script-mode.el

(autoload 'ghci-script-mode "ghci-script-mode" "\
Major mode for working with .ghci files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.ghci\\'" . ghci-script-mode))

;;;***

;;;### (autoloads nil "haskell" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell.el"
;;;;;;  "03fe096f2a8ead3877481474e135df77")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell.el

(autoload 'interactive-haskell-mode "haskell" "\
Minor mode for enabling haskell-process interaction.

\(fn &optional ARG)" t nil)

(autoload 'haskell-interactive-mode-return "haskell" "\
Handle the return key.

\(fn)" t nil)

(autoload 'haskell-session-kill "haskell" "\
Kill the session process and buffer, delete the session.
0. Prompt to kill all associated buffers.
1. Kill the process.
2. Kill the interactive buffer.
3. Walk through all the related buffers and set their haskell-session to nil.
4. Remove the session from the sessions list.

\(fn &optional LEAVE-INTERACTIVE-BUFFER)" t nil)

(autoload 'haskell-interactive-kill "haskell" "\
Kill the buffer and (maybe) the session.

\(fn)" t nil)

(autoload 'haskell-session "haskell" "\
Get the Haskell session, prompt if there isn't one or fail.

\(fn)" nil nil)

(autoload 'haskell-interactive-switch "haskell" "\
Switch to the interactive mode for this session.

\(fn)" t nil)

(autoload 'haskell-session-change "haskell" "\
Change the session for the current buffer.

\(fn)" t nil)

(autoload 'haskell-kill-session-process "haskell" "\
Kill the process.

\(fn &optional SESSION)" t nil)

(autoload 'haskell-interactive-mode-visit-error "haskell" "\
Visit the buffer of the current (or last) error message.

\(fn)" t nil)

(autoload 'haskell-mode-contextual-space "haskell" "\
Contextually do clever stuff when hitting space.

\(fn)" t nil)

(autoload 'haskell-mode-jump-to-tag "haskell" "\
Jump to the tag of the given identifier.

\(fn &optional NEXT-P)" t nil)

(autoload 'haskell-mode-after-save-handler "haskell" "\
Function that will be called after buffer's saving.

\(fn)" nil nil)

(autoload 'haskell-mode-tag-find "haskell" "\
The tag find function, specific for the particular session.

\(fn &optional NEXT-P)" t nil)

(autoload 'haskell-interactive-bring "haskell" "\
Bring up the interactive mode for this session.

\(fn)" t nil)

(autoload 'haskell-process-load-file "haskell" "\
Load the current buffer file.

\(fn)" t nil)

(autoload 'haskell-process-reload-file "haskell" "\
Re-load the current buffer file.

\(fn)" t nil)

(autoload 'haskell-process-load-or-reload "haskell" "\
Load or reload. Universal argument toggles which.

\(fn &optional TOGGLE)" t nil)

(autoload 'haskell-process-cabal-build "haskell" "\
Build the Cabal project.

\(fn)" t nil)

(autoload 'haskell-process-cabal "haskell" "\
Prompts for a Cabal command to run.

\(fn P)" t nil)

(autoload 'haskell-process-minimal-imports "haskell" "\
Dump minimal imports.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-align-imports" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-align-imports.el"
;;;;;;  "af4485749f603876852e50f72d67fbf5")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-align-imports.el

(autoload 'haskell-align-imports "haskell-align-imports" "\
Align all the imports in the buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-cabal" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-cabal.el"
;;;;;;  "19b5b33b8fa366f15bad70328cbc6353")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-cabal.el

(add-to-list 'auto-mode-alist '("\\.cabal\\'" . haskell-cabal-mode))

(autoload 'haskell-cabal-mode "haskell-cabal" "\
Major mode for Cabal package description files.

\(fn)" t nil)

(autoload 'haskell-cabal-guess-setting "haskell-cabal" "\
Guess the specified setting of this project.
If there is no valid .cabal file to get the setting from (or
there is no corresponding setting with that name in the .cabal
file), then this function returns nil.

\(fn NAME)" t nil)

(autoload 'haskell-cabal-get-dir "haskell-cabal" "\
Get the Cabal dir for a new project. Various ways of figuring this out,
   and indeed just prompting the user. Do them all.

\(fn)" nil nil)

(autoload 'haskell-cabal-visit-file "haskell-cabal" "\
Locate and visit package description file for file visited by current buffer.
This uses `haskell-cabal-find-file' to locate the closest
\".cabal\" file and open it.  This command assumes a common Cabal
project structure where the \".cabal\" file is in the top-folder
of the project, and all files related to the project are in or
below the top-folder.  If called with non-nil prefix argument
OTHER-WINDOW use `find-file-other-window'.

\(fn OTHER-WINDOW)" t nil)

;;;***

;;;### (autoloads nil "haskell-checkers" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-checkers.el"
;;;;;;  "9083edcbd10e47adbd4e4e8943dd7fa5")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-checkers.el

(defvar haskell-lint-command "hlint" "\
The default lint command for \\[hlint].")

(custom-autoload 'haskell-lint-command "haskell-checkers" t)

;;;***

;;;### (autoloads nil "haskell-commands" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-commands.el"
;;;;;;  "f86aab2d8abcb2927a67b38793aae36c")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-commands.el

(autoload 'haskell-process-restart "haskell-commands" "\
Restart the inferior Haskell process.

\(fn)" t nil)

(autoload 'haskell-process-clear "haskell-commands" "\
Clear the current process.

\(fn)" t nil)

(autoload 'haskell-process-interrupt "haskell-commands" "\
Interrupt the process (SIGINT).

\(fn)" t nil)

(autoload 'haskell-process-touch-buffer "haskell-commands" "\
Query PROCESS to `:!touch` BUFFER's file.
Use to update mtime on BUFFER's file.

\(fn PROCESS BUFFER)" t nil)

(autoload 'haskell-describe "haskell-commands" "\
Describe the given identifier IDENT.

\(fn IDENT)" t nil)

(autoload 'haskell-rgrep "haskell-commands" "\
Grep the effective project for the symbol at point.
Very useful for codebase navigation.

Prompts for an arbitrary regexp given a prefix arg PROMPT.

\(fn &optional PROMPT)" t nil)

(autoload 'haskell-process-do-info "haskell-commands" "\
Print info on the identifier at point.
If PROMPT-VALUE is non-nil, request identifier via mini-buffer.

\(fn &optional PROMPT-VALUE)" t nil)

(autoload 'haskell-process-do-type "haskell-commands" "\
Print the type of the given expression.

Given INSERT-VALUE prefix indicates that result type signature
should be inserted.

\(fn &optional INSERT-VALUE)" t nil)

(autoload 'haskell-mode-jump-to-def-or-tag "haskell-commands" "\
Jump to the definition.
Jump to definition of identifier at point by consulting GHCi, or
tag table as fallback.

Remember: If GHCi is busy doing something, this will delay, but
it will always be accurate, in contrast to tags, which always
work but are not always accurate.
If the definition or tag is found, the location from which you jumped
will be pushed onto `xref--marker-ring', so you can return to that
position with `xref-pop-marker-stack'.

\(fn &optional NEXT-P)" t nil)

(autoload 'haskell-mode-goto-loc "haskell-commands" "\
Go to the location of the thing at point.
Requires the :loc-at command from GHCi.

\(fn)" t nil)

(autoload 'haskell-mode-jump-to-def "haskell-commands" "\
Jump to definition of identifier IDENT at point.

\(fn IDENT)" t nil)

(autoload 'haskell-process-cd "haskell-commands" "\
Change directory.

\(fn &optional NOT-INTERACTIVE)" t nil)

(autoload 'haskell-process-cabal-macros "haskell-commands" "\
Send the cabal macros string.

\(fn)" t nil)

(autoload 'haskell-mode-show-type-at "haskell-commands" "\
Show type of the thing at point or within active region asynchronously.
This function requires GHCi-ng and `:set +c` option enabled by
default (please follow GHCi-ng README available at URL
`https://github.com/chrisdone/ghci-ng').

\\<haskell-interactive-mode-map>
To make this function works sometimes you need to load the file in REPL
first using command `haskell-process-load-or-reload' bound to
\\[haskell-process-load-or-reload].

Optional argument INSERT-VALUE indicates that
recieved type signature should be inserted (but only if nothing
happened since function invocation).

\(fn &optional INSERT-VALUE)" t nil)

(autoload 'haskell-process-generate-tags "haskell-commands" "\
Regenerate the TAGS table.
If optional AND-THEN-FIND-THIS-TAG argument is present it is used with
function `xref-find-definitions' after new table was generated.

\(fn &optional AND-THEN-FIND-THIS-TAG)" t nil)

(autoload 'haskell-process-unignore "haskell-commands" "\
Unignore any ignored files.
Do not ignore files that were specified as being ignored by the
inferior GHCi process.

\(fn)" t nil)

(autoload 'haskell-session-change-target "haskell-commands" "\
Set the build TARGET for cabal REPL.

\(fn TARGET)" t nil)

(autoload 'haskell-mode-stylish-buffer "haskell-commands" "\
Apply stylish-haskell to the current buffer.

\(fn)" t nil)

(autoload 'haskell-mode-find-uses "haskell-commands" "\
Find use cases of the identifier at point and highlight them all.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-compile" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-compile.el"
;;;;;;  "93ff87832c3a02ad19e6d2f9bf874a23")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-compile.el

(autoload 'haskell-compile "haskell-compile" "\
Compile the Haskell program including the current buffer.
Tries to locate the next cabal description in current or parent
folders via `haskell-cabal-find-dir' and if found, invoke
`haskell-compile-cabal-build-command' from the cabal package root
folder. If no cabal package could be detected,
`haskell-compile-command' is used instead.

If prefix argument EDIT-COMMAND is non-nil (and not a negative
prefix `-'), `haskell-compile' prompts for custom compile
command.

If EDIT-COMMAND contains the negative prefix argument `-',
`haskell-compile' calls the alternative command defined in
`haskell-compile-cabal-build-alt-command' if a cabal package was
detected.

`haskell-compile' uses `haskell-compilation-mode' which is
derived from `compilation-mode'. See Info
node `(haskell-mode)compilation' for more details.

\(fn &optional EDIT-COMMAND)" t nil)

;;;***

;;;### (autoloads nil "haskell-customize" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-customize.el"
;;;;;;  "86a77ff92adfcdd199b1ae9330099b4d")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-customize.el

(autoload 'haskell-customize "haskell-customize" "\
Browse the haskell customize sub-tree.
This calls 'customize-browse' with haskell as argument and makes
sure all haskell customize definitions have been loaded.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-decl-scan" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-decl-scan.el"
;;;;;;  "69c45e71ec43b918ea19ecbedc5c422f")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-decl-scan.el

(autoload 'haskell-ds-create-imenu-index "haskell-decl-scan" "\
Function for finding `imenu' declarations in Haskell mode.
Finds all declarations (classes, variables, imports, instances and
datatypes) in a Haskell file for the `imenu' package.

\(fn)" nil nil)

(autoload 'turn-on-haskell-decl-scan "haskell-decl-scan" "\
Unconditionally activate `haskell-decl-scan-mode'.

\(fn)" t nil)

(autoload 'haskell-decl-scan-mode "haskell-decl-scan" "\
Toggle Haskell declaration scanning minor mode on or off.
With a prefix argument ARG, enable minor mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil, and toggle it if ARG is `toggle'.

See also info node `(haskell-mode)haskell-decl-scan-mode' for
more details about this minor mode.

Top-level declarations are scanned and listed in the menu item
\"Declarations\" (if enabled via option
`haskell-decl-scan-add-to-menubar').  Selecting an item from this
menu will take point to the start of the declaration.

\\[beginning-of-defun] and \\[end-of-defun] move forward and backward to the start of a declaration.

This may link with `haskell-doc-mode'.

For non-literate and LaTeX-style literate scripts, we assume the
common convention that top-level declarations start at the first
column.  For Bird-style literate scripts, we assume the common
convention that top-level declarations start at the third column,
ie. after \"> \".

Anything in `font-lock-comment-face' is not considered for a
declaration.  Therefore, using Haskell font locking with comments
coloured in `font-lock-comment-face' improves declaration scanning.

Literate Haskell scripts are supported: If the value of
`haskell-literate' (set automatically by `literate-haskell-mode')
is `bird', a Bird-style literate script is assumed.  If it is nil
or `tex', a non-literate or LaTeX-style literate script is
assumed, respectively.

Invokes `haskell-decl-scan-mode-hook' on activation.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "haskell-doc" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-doc.el"
;;;;;;  "d8833cd1655f102f6eb17256e4190016")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-doc.el

(autoload 'haskell-doc-mode "haskell-doc" "\
Enter `haskell-doc-mode' for showing fct types in the echo area.
See variable docstring.

\(fn &optional ARG)" t nil)

(defalias 'turn-on-haskell-doc-mode 'haskell-doc-mode)

(defalias 'turn-on-haskell-doc 'haskell-doc-mode)

(autoload 'haskell-doc-current-info "haskell-doc" "\
Return the info about symbol at point.
Meant for `eldoc-documentation-function'.

\(fn)" nil nil)

(autoload 'haskell-doc-show-type "haskell-doc" "\
Show the type of the function near point.
For the function under point, show the type in the echo area.
This information is extracted from the `haskell-doc-prelude-types' alist
of prelude functions and their types, or from the local functions in the
current buffer.

\(fn &optional SYM)" t nil)

;;;***

;;;### (autoloads nil "haskell-font-lock" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-font-lock.el"
;;;;;;  "f85141ee2d4eb8febdfaffc4deac6743")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-font-lock.el

(autoload 'haskell-font-lock-choose-keywords "haskell-font-lock" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil "haskell-indent" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-indent.el"
;;;;;;  "deaa4df4580c7ab6a13427e73ca954db")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-indent.el

(autoload 'turn-on-haskell-indent "haskell-indent" "\
Turn on ``intelligent'' Haskell indentation mode.

\(fn)" nil nil)

(autoload 'haskell-indent-mode "haskell-indent" "\
``Intelligent'' Haskell indentation mode.
This deals with the layout rule of Haskell.
\\[haskell-indent-cycle] starts the cycle which proposes new
possibilities as long as the TAB key is pressed.  Any other key
or mouse click terminates the cycle and is interpreted except for
RET which merely exits the cycle.
Other special keys are:
    \\[haskell-indent-insert-equal]
      inserts an =
    \\[haskell-indent-insert-guard]
      inserts an |
    \\[haskell-indent-insert-otherwise]
      inserts an | otherwise =
these functions also align the guards and rhs of the current definition
    \\[haskell-indent-insert-where]
      inserts a where keyword
    \\[haskell-indent-align-guards-and-rhs]
      aligns the guards and rhs of the region
    \\[haskell-indent-put-region-in-literate]
      makes the region a piece of literate code in a literate script

Invokes `haskell-indent-hook' if not nil.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "haskell-indentation" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-indentation.el"
;;;;;;  "f4869d0d293b2b4e48e67c38f210a7c5")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-indentation.el

(autoload 'haskell-indentation-mode "haskell-indentation" "\
Haskell indentation mode that deals with the layout rule.
It rebinds RET, DEL and BACKSPACE, so that indentations can be
set and deleted as if they were real tabs.  It supports
autofill-mode.

It is possible to render indent stops for current line as
overlays.  Please read documentation for option
`haskell-indentation-enable-show-indentations' and option
`haskell-indentation-show-indentations-after-eol'.  These options
were disabled by default because in most cases occurs overlay
clashing with other modes.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-haskell-indentation "haskell-indentation" "\
Turn on the haskell-indentation minor mode.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-interactive-mode" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-interactive-mode.el"
;;;;;;  "f6083a4815c909ae219d1fa4d695f4e1")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-interactive-mode.el

(autoload 'haskell-interactive-mode-reset-error "haskell-interactive-mode" "\
Reset the error cursor position.

\(fn SESSION)" t nil)

(autoload 'haskell-interactive-mode-echo "haskell-interactive-mode" "\
Echo a read only piece of text before the prompt.

\(fn SESSION MESSAGE &optional MODE)" nil nil)

(autoload 'haskell-process-show-repl-response "haskell-interactive-mode" "\
Send LINE to the GHCi process and echo the result in some fashion.
Result will be printed in the minibuffer or presented using
function `haskell-presentation-present', depending on variable
`haskell-process-use-presentation-mode'.

\(fn LINE)" nil nil)

;;;***

;;;### (autoloads nil "haskell-load" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-load.el"
;;;;;;  "f1c99011776e8c5458d88c322fc14b0c")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-load.el

(autoload 'haskell-process-reload-devel-main "haskell-load" "\
Reload the module `DevelMain' and then run
`DevelMain.update'. This is for doing live update of the code of
servers or GUI applications. Put your development version of the
program in `DevelMain', and define `update' to auto-start the
program on a new thread, and use the `foreign-store' package to
access the running context across :load/:reloads in GHCi.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-menu" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-menu.el"
;;;;;;  "efb76a4dad299bd5e54b5b9abc2d38e3")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-menu.el

(autoload 'haskell-menu "haskell-menu" "\
Launch the Haskell sessions menu.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-mode.el"
;;;;;;  "9c123ff9e57693d58d96f30802b1c1e5")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-mode.el

(autoload 'haskell-version "haskell-mode" "\
Show the `haskell-mode` version in the echo area.
With prefix argument HERE, insert it at point.

\(fn &optional HERE)" t nil)

(autoload 'haskell-mode-view-news "haskell-mode" "\
Display information on recent changes to haskell-mode.

\(fn)" t nil)

(autoload 'haskell-mode "haskell-mode" "\
Major mode for editing Haskell programs.

For more information aee also Info node `(haskell-mode)Getting Started'.

\\<haskell-mode-map>

Literate Haskell scripts are supported via `literate-haskell-mode'.
The variable `haskell-literate' indicates the style of the script in the
current buffer.  See the documentation on this variable for more details.

Use `haskell-version' to find out what version of Haskell mode you are
currently using.

Additional Haskell mode modules can be hooked in via `haskell-mode-hook'.

Indentation modes:

    `haskell-indentation-mode', Kristof Bastiaensen, Gergely Risko
      Intelligent semi-automatic indentation Mk2

    `haskell-indent-mode', Guy Lapalme
      Intelligent semi-automatic indentation.

    `haskell-simple-indent-mode', Graeme E Moss and Heribert Schuetz
      Simple indentation.

Interaction modes:

    `interactive-haskell-mode'
      Interact with per-project GHCi processes through a REPL and
      directory-aware sessions.

    `inf-haskell-mode'
      Interact with a GHCi process using comint-mode. Deprecated.

Other modes:

    `haskell-decl-scan-mode', Graeme E Moss
      Scans top-level declarations, and places them in a menu.

    `haskell-doc-mode', Hans-Wolfgang Loidl
      Echoes types of functions or syntax of keywords when the cursor is idle.

To activate a minor-mode, simply run the interactive command. For
example, `M-x haskell-doc-mode'. Run it again to disable it.

To enable a mode for every haskell-mode buffer, add a hook in
your Emacs configuration. To do that you can customize
`haskell-mode-hook' or add lines to your .emacs file. For
example, to enable `haskell-indent-mode' and
`interactive-haskell-mode', use the following:

    (add-hook 'haskell-mode-hook 'haskell-indentation-mode)
    (add-hook 'haskell-mode-hook 'interactive-haskell-mode)

For more details see Info node `(haskell-mode)haskell-mode-hook'.

Warning: do not enable more than one of the above indentation
modes. See Info node `(haskell-mode)indentation' for more
details.

Minor modes that work well with `haskell-mode':

- `smerge-mode': show and work with diff3 conflict markers used
  by git, svn and other version control systems.

\(fn)" t nil)

(autoload 'literate-haskell-mode "haskell-mode" "\
As `haskell-mode' but for literate scripts.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.[gh]s\\'" . haskell-mode))

(add-to-list 'auto-mode-alist '("\\.l[gh]s\\'" . literate-haskell-mode))

(add-to-list 'auto-mode-alist '("\\.hsc\\'" . haskell-mode))

(add-to-list 'interpreter-mode-alist '("runghc" . haskell-mode))

(add-to-list 'interpreter-mode-alist '("runhaskell" . haskell-mode))

(add-to-list 'completion-ignored-extensions ".hi")

(autoload 'haskell-hoogle "haskell-mode" "\
Do a Hoogle search for QUERY.
When `haskell-hoogle-command' is non-nil, this command runs
that.  Otherwise, it opens a hoogle search result in the browser.

If prefix argument INFO is given, then `haskell-hoogle-command'
is asked to show extra info for the items matching QUERY..

\(fn QUERY &optional INFO)" t nil)

(defalias 'hoogle 'haskell-hoogle)

(autoload 'hoogle-lookup-from-local "haskell-mode" "\
Lookup by local hoogle.

\(fn)" t nil)

(autoload 'haskell-hayoo "haskell-mode" "\
Do a Hayoo search for QUERY.

\(fn QUERY)" t nil)

(defalias 'hayoo 'haskell-hayoo)

;;;***

;;;### (autoloads nil "haskell-modules" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-modules.el"
;;;;;;  "dba682f2d073db78c0aaa1f81cfb19d1")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-modules.el

(autoload 'haskell-session-installed-modules "haskell-modules" "\
Get the modules installed in the current package set.
If DONTCREATE is non-nil don't create a new session.

\(fn SESSION &optional DONTCREATE)" nil nil)

(autoload 'haskell-session-all-modules "haskell-modules" "\
Get all modules -- installed or in the current project.
If DONTCREATE is non-nil don't create a new session.

\(fn SESSION &optional DONTCREATE)" nil nil)

(autoload 'haskell-session-project-modules "haskell-modules" "\
Get the modules of the current project.
If DONTCREATE is non-nil don't create a new session.

\(fn SESSION &optional DONTCREATE)" nil nil)

;;;***

;;;### (autoloads nil "haskell-move-nested" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-move-nested.el"
;;;;;;  "3f936f93c0f6503d52b7962d28f311e5")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-move-nested.el

(autoload 'haskell-move-nested "haskell-move-nested" "\
Shift the nested off-side-rule block adjacent to point by COLS columns to the right.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

\(fn COLS)" nil nil)

(autoload 'haskell-move-nested-right "haskell-move-nested" "\
Increase indentation of the following off-side-rule block adjacent to point.

Use a numeric prefix argument to indicate amount of indentation to apply.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

\(fn COLS)" t nil)

(autoload 'haskell-move-nested-left "haskell-move-nested" "\
Decrease indentation of the following off-side-rule block adjacent to point.

Use a numeric prefix argument to indicate amount of indentation to apply.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

\(fn COLS)" t nil)

;;;***

;;;### (autoloads nil "haskell-navigate-imports" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-navigate-imports.el"
;;;;;;  "a45ce848371144d4d78f0a94b4c999de")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-navigate-imports.el

(autoload 'haskell-navigate-imports "haskell-navigate-imports" "\
Cycle the Haskell import lines or return to point (with prefix arg).

\(fn &optional RETURN)" t nil)

(autoload 'haskell-navigate-imports-go "haskell-navigate-imports" "\
Go to the first line of a list of consequtive import lines. Cycles.

\(fn)" t nil)

(autoload 'haskell-navigate-imports-return "haskell-navigate-imports" "\
Return to the non-import point we were at before going to the module list.
   If we were originally at an import list, we can just cycle through easily.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-session" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-session.el"
;;;;;;  "1fae1dfa24d369fe2d6aee78cb6b49a1")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-session.el

(autoload 'haskell-session-maybe "haskell-session" "\
Maybe get the Haskell session, return nil if there isn't one.

\(fn)" nil nil)

(autoload 'haskell-session-process "haskell-session" "\
Get the session process.

\(fn S)" nil nil)

;;;***

;;;### (autoloads nil "haskell-simple-indent" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-simple-indent.el"
;;;;;;  "1568ca28b3b2a7c4df6530bdd126c01d")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-simple-indent.el

(autoload 'haskell-simple-indent-mode "haskell-simple-indent" "\
Simple Haskell indentation mode that uses simple heuristic.
In this minor mode, `indent-for-tab-command' (bound to <tab> by
default) will move the cursor to the next indent point in the
previous nonblank line, whereas `haskell-simple-indent-backtab'
\(bound to <backtab> by default) will move the cursor the
previous indent point.  An indent point is a non-whitespace
character following whitespace.

Runs `haskell-simple-indent-hook' on activation.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-haskell-simple-indent "haskell-simple-indent" "\
Turn on function `haskell-simple-indent-mode'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-sort-imports" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-sort-imports.el"
;;;;;;  "ee87d36a7d077feb29fd44af7afc8e17")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-sort-imports.el

(autoload 'haskell-sort-imports "haskell-sort-imports" "\
Sort the import list at point. It sorts the current group
i.e. an import list separated by blank lines on either side.

If the region is active, it will restrict the imports to sort
within that region.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-unicode-input-method" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-unicode-input-method.el"
;;;;;;  "5882c29b6ec0af42816a3628e29fa906")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-unicode-input-method.el

(autoload 'turn-on-haskell-unicode-input-method "haskell-unicode-input-method" "\
Set input method `haskell-unicode'.
See Info node `Unicode(haskell-mode)' for more details.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "highlight-uses-mode" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/highlight-uses-mode.el"
;;;;;;  "197eb546be36024ac596df73883dadfb")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/highlight-uses-mode.el

(autoload 'highlight-uses-mode "highlight-uses-mode" "\
Minor mode for highlighting and jumping between uses.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "inf-haskell" "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/inf-haskell.el"
;;;;;;  "cf6f75b8a9a63b08315513b902abb6f0")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/inf-haskell.el

(defalias 'run-haskell 'switch-to-haskell)

(autoload 'switch-to-haskell "inf-haskell" "\
Show the inferior-haskell buffer.  Start the process if needed.

\(fn &optional ARG)" t nil)

(autoload 'inferior-haskell-load-file "inf-haskell" "\
Pass the current buffer's file to the inferior haskell process.
If prefix arg \\[universal-argument] is given, just reload the previous file.

\(fn &optional RELOAD)" t nil)

(autoload 'inferior-haskell-load-and-run "inf-haskell" "\
Pass the current buffer's file to haskell and then run a COMMAND.

\(fn COMMAND)" t nil)

(autoload 'inferior-haskell-send-decl "inf-haskell" "\
Send current declaration to inferior-haskell process.

\(fn)" t nil)

(autoload 'inferior-haskell-type "inf-haskell" "\
Query the haskell process for the type of the given expression.
If optional argument `insert-value' is non-nil, insert the type above point
in the buffer.  This can be done interactively with the \\[universal-argument] prefix.
The returned info is cached for reuse by `haskell-doc-mode'.

\(fn EXPR &optional INSERT-VALUE)" t nil)

(autoload 'inferior-haskell-kind "inf-haskell" "\
Query the haskell process for the kind of the given expression.

\(fn TYPE)" t nil)

(autoload 'inferior-haskell-info "inf-haskell" "\
Query the haskell process for the info of the given expression.

\(fn SYM)" t nil)

(autoload 'inferior-haskell-find-definition "inf-haskell" "\
Attempt to locate and jump to the definition of the given expression.

\(fn SYM)" t nil)

(autoload 'inferior-haskell-find-haddock "inf-haskell" "\
Find and open the Haddock documentation of SYM.
Make sure to load the file into GHCi or Hugs first by using C-c C-l.
Only works for functions in a package installed with ghc-pkg, or
whatever the value of `haskell-package-manager-name' is.

This function needs to find which package a given module belongs
to.  In order to do this, it computes a module-to-package lookup
alist, which is expensive to compute (it takes upwards of five
seconds with more than about thirty installed packages).  As a
result, we cache it across sessions using the cache file
referenced by `inferior-haskell-module-alist-file'. We test to
see if this is newer than `haskell-package-conf-file' every time
we load it.

\(fn SYM)" t nil)

(autoload 'inf-haskell-mode "inf-haskell" "\
Minor mode for enabling inf-haskell process interaction.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/ghc-core.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/ghci-script-mode.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-align-imports.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-bot.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-cabal.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-checkers.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-collapse.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-commands.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-compat.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-compile.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-complete-module.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-completions.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-customize.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-debug.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-decl-scan.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-doc.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-font-lock.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-indent.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-indentation.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-interactive-mode.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-load.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-menu.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-mode-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-mode-pkg.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-mode.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-modules.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-move-nested.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-navigate-imports.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-package.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-presentation-mode.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-process.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-repl.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-sandbox.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-session.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-simple-indent.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-sort-imports.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-string.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-unicode-input-method.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell-utils.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/haskell.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/highlight-uses-mode.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/inf-haskell.el"
;;;;;;  "../../../../../.emacs.d/elpa/haskell-mode-20150707.1108/w3m-haddock.el")
;;;;;;  (21923 6198 536495 800000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; haskell-mode-autoloads.el ends here