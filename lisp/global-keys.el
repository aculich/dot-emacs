;;; Cursor Movement
(keydef "A-SPC"       pop-to-mark-command)
(keydef " "           pop-to-mark-command)

(keydef "A-C-SPC"     pop-to-mark-command)
(keydef "A-j"         forward-paragraph)
(keydef "A-k"         backward-paragraph)
(keydef "C-c C-n"     next-error)
(keydef "C-c C-p"     previous-error)
(keydef "C-n"         next-line)
(keydef "C-p"         previous-line)

;;; Search
(keydef "A-f"         find-name-dired)
(keydef "C-A-g"       grep-find)
(keydef "C-h C-w"     find-function-on-key)
(keydef "C-h C-f"     find-function-at-point)
(keydef "C-r"         isearch-backward-regexp)
(keydef "C-s"         isearch-forward-regexp)

(keydef "<M-up>"      search-word-backward)
(keydef "<M-down>"    search-word-forward)
(keydef "M-p"         search-word-backward)
(keydef "M-n"         search-word-forward)

(keydef "C-A-s"       w3m-search-new-session)
(keydef "C-A-w"       w3m-goto-url-new-session)
(keydef "C-A-r"       w3m-google-reader)

;;; Replace
(keydef "C-M-%"       query-replace)
(keydef "M-%"         query-replace-regexp)

;;; Killing
(keydef "C-M-S-k"     backward-kill-sexp)
(keydef "C-M-S-w"     backward-kill-sexp)
(keydef "C-q"         kill-region)
(keydef "C-w"         backward-kill-word)
(keydef "A-c"         yank-copy-as-kill-previous-line-until-char-looking-at)
(keydef "¢"           yank-copy-as-kill-previous-line-until-char-looking-at)
(keydef "C-A-l"       append-next-kill)
(keydef "C-A-k"       kill-whole-line)

(keydef "A-C-d A-C-m A-C-l"     delete-matching-lines)
(keydef "A-C-d A-C-n A-C-l"     delete-non-matching-lines)

;;; Buffers
(keydef "C-="         ediff-buffers)
(keydef "C-M-S-l"     (switch-to-buffer nil))
(keydef "C-x b"       ibuffer)
(keydef "C-x C-b"     switch-to-buffer)
(keydef "C-x C-k"     (kill-buffer nil))
(keydef "C-A-x C-A-k" (let ((buf (current-buffer))) (dired-jump) (kill-buffer buf)))

;;; Windows
(keydef "C-^"         enlarge-window)
(keydef "C-x C--"     split-window-vertically)
(keydef "C-x C-\\"    split-window-horizontally)
(keydef "C-x C-l"     balance-windows)
(keydef "C-{"         shrink-window-horizontally)
(keydef "C-}"         enlarge-window-horizontally)

(keydef "C-A-0"       delete-window-or-frame)
(keydef "C-A-1"       delete-other-windows)
(keydef "C-A-2"       split-window-vertically)
(keydef "C-A-3"       split-window-horizontally)
(keydef "C-A-4"       dired-jump)
(keydef "C-A-5"       delete-window-make-new-frame)
(keydef "C-A-y"       (kill-whole-line) (yank) (yank)) ;; FIXME too simplistic, but it works for now
(keydef "C-A-9"       kill-buffer-and-window)
(keydef "C-A--"       bury-buffer)
(keydef "C-x 9"       kill-buffer-and-window)
(keydef "C-x C-9"     kill-buffer-and-window)

;;; Frames
(keydef "<C-menu>"    toggle-menu-bar-mode-from-frame)
(keydef "C-x C-;"     delete-frame)

;;; Fonts
(keydef "C-)"         (text-scale-set 0))
(keydef "C-+"         text-scale-increase)
(keydef "C-_"         text-scale-decrease)

;;; Dired
(keydef "C-A-j"       dired-jump)
(keydef "C-x C-j"     dired-jump)
(keydef "C-x C-d"     dired-other-window)
(keydef "A-M-f"       find-dired)
(keydef "A-f"         find-name-dired)
(keydef "C-A-4"       (dired-goto-buffer-directory t))
(keydef "C-A-6"       dired-goto-buffer-directory)
(keydef "C-x C-d"     dired-other-window)

;;; Files
(keydef "C-h C-`"     (find-file-timesort "~/"))
(keydef "C-h C-t"     (find-file-timesort "/tmp/"))
(keydef "C-h C-d"     (find-file-timesort "~/Downloads"))
(keydef "C-h C-x C-c" (find-file custom-file))
(keydef "C-h C-x C-k" (find-file user-keys-file))
(keydef "C-h C-x C-w" (find-file-timesort "~/workspace"))
(keydef "C-h C-x TAB" (find-file user-init-file))
(keydef "C-h TAB"     (find-file user-init-file))

;;; Customization
(keydef "C-h C-a"     customize-apropos-all)
(keydef "C-h C-c"     customize-apropos)
(keydef "C-h C-r"     customize-apropos)
(keydef "C-h g"       customize-group)
(keydef "C-h C-v"     customize-variable)
(keydef "C-h A-v"     apropos-value)

;;; Misc
(keydef "C-h d"       nil)
(keydef "C-c C-v"     magit-status)
(keydef "C-x C-z"     toggle-truncate-lines)

(keydef "A-M-f"       find-dired)
(keydef "A-a"         manual-entry)
(keydef "A-e"         eshell)
(keydef "A-g"         grep)
(keydef "A-l"         locate)
(keydef "A-m"         manual-entry)
(keydef "C-z"         nil)

(keydef "A-;"         async-shell-command)
(keydef "C-M-!"       shell-command)
(keydef "M-!"         async-shell-command)

(keydef "A-q"         quoted-insert)
(keydef "C-A-c"       exit-recursive-edit)

(keydef "C-c C-c"     compile)

(keydef "C-h C-n"     linum-mode)
(keydef "C-h o"       list-processes)

(keydef "C-x C-4"     set-selective-display)
(keydef "C-x C-e"     apply-macro-to-region-lines)
(keydef "C-c C-e"     eval-last-sexp)
(keydef "C-c C-r"     eval-region)

(keydef "C-c C-\\"    toggle-input-method)

(keydef "C-;"         comment-or-uncomment-region)

;;; macros
(keydef "C-h C-k"     kmacro-keymap)

;;; org-mode
(keydef "C-c C-x C-l" org-insert-link-global)
(keydef "C-A-,"       org-cycle-agenda-files)
(keydef "C-h C-;"     org-buffer-pop-to-next)
;(keydef "C-c C-a"    org-attach) ;; TODO global context for org-attach
(keydef "C-c a"       org-agenda)
(keydef "C-c C-b"     org-iswitchb)
(keydef "C-c C-l"     org-store-link)
;(keydef "C-c C-m"    org-capture)
(keydef "C-c m"       org-capture)

(keydef "C-S-<iso-lefttab>" other-window-previous)
(keydef "C-S-<tab>"   other-window-previous)
(keydef "C-<tab>"     other-window-next)
(keydef "C-x o"       other-window-next)
(keydef "C-x C-o"     other-window-next)
(keydef "C-x C-d"     dired-other-window)
