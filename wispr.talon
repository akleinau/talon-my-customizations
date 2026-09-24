mode: command
-

# voice command to start wispr
whisper [start]: key(f11)

# special editing mode of wispr 
whisper change:
    key('ctrl-f9:down')
        speech.disable() 
        user.wispr_tag_activate()


# gets triggered in autohotkey when wispr is activated or deactivated
key(f13):
    speech.disable()
    user.wispr_tag_activate()

whisper paste: key(alt-shift-z)

# improve spelling and grammar
[whisper] spelling: key(ctrl-f6)

# format
whisper format: key(ctrl-f7)