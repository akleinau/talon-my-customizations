key(f6): tracking.control_toggle()
key(f4:down):
    user.mouse_gaze_scroll()
    tracking.control_toggle(false)


key(f4:up):
    user.mouse_scroll_stop()
    tracking.control_toggle()

curse yes: user.mouse_cursor_show()
curse no: user.mouse_cursor_hide()