
(require 'windmove)

(defconst buffer-move-version "0.6.3"
  "Version of buffer-move.el")

(defgroup buffer-move nil
  "Swap buffers without typing C-x b on each window"
  :group 'tools)

(defcustom buffer-move-behavior 'swap
  "If set to 'swap (default), the buffers will be exchanged
    (i.e. swapped), if set to 'move, the current window is switch back to the
    previously displayed buffer (i.e. the buffer is moved)."
  :group 'buffer-move
  :type 'symbol)

(defcustom buffer-move-stay-after-swap nil
  "If set to non-nil, point will stay in the current window
    so it will not be moved when swapping buffers. This setting
    only has effect if `buffer-move-behavior' is set to 'swap."
  :group 'buffer-move
  :type 'boolean)

(defun buf-move-to (direction)
  "Helper function to move the current buffer to the window in the given
     direction (with must be 'up, 'down', 'left or 'right). An error is
     thrown, if no window exists in this direction."
  (cl-flet ((window-settings (window)
              (list (window-buffer window)
                    (window-start window)
                    (window-hscroll window)
                    (window-point window)))
            (set-window-settings (window settings)
              (cl-destructuring-bind (buffer start hscroll point)
                  settings
                (set-window-buffer window buffer)
                (set-window-start window start)
                (set-window-hscroll window hscroll)
                (set-window-point window point))))
    (let* ((this-window (selected-window))
           (this-window-settings (window-settings this-window))
           (other-window (windmove-find-other-window direction))
           (other-window-settings (window-settings other-window)))
      (cond ((null other-window)
             (error "No window in this direction"))
            ((window-dedicated-p other-window)
             (error "The window in this direction is dedicated"))
            ((window-minibuffer-p other-window)
             (error "The window in this direction is the Minibuffer")))
      (set-window-settings other-window this-window-settings)
      (if (eq buffer-move-behavior 'move)
          (switch-to-prev-buffer this-window)
        (set-window-settings this-window other-window-settings))
      (select-window other-window))))

  ;;;###autoload
(defun buf-move-up ()
  "Swap the current buffer and the buffer above the split.
     If there is no split, ie now window above the current one, an
     error is signaled."
  (interactive)
  (buf-move-to 'up))

  ;;;###autoload
(defun buf-move-down ()
  "Swap the current buffer and the buffer under the split.
     If there is no split, ie now window under the current one, an
     error is signaled."
  (interactive)
  (buf-move-to 'down))

  ;;;###autoload
(defun buf-move-left ()
  "Swap the current buffer and the buffer on the left of the split.
     If there is no split, ie now window on the left of the current
     one, an error is signaled."
  (interactive)
  (buf-move-to 'left))

  ;;;###autoload
(defun buf-move-right ()
  "Swap the current buffer and the buffer on the right of the split.
     If there is no split, ie now window on the right of the current
     one, an error is signaled."
  (interactive)
  (buf-move-to 'right))

  ;;;###autoload
(defun buf-move ()
  "Begin moving the current buffer to different windows.

  Use the arrow keys to move in the desired direction.  Pressing
  any other key exits this function."
  (interactive)
  (let ((map (make-sparse-keymap)))
    (dolist (x '(("<up>" . buf-move-up)
                 ("<left>" . buf-move-left)
                 ("<down>" . buf-move-down)
                 ("<right>" . buf-move-right)))
      (define-key map (read-kbd-macro (car x)) (cdr x)))
    (set-transient-map map t)))

(provide 'buffer-move-setup)

