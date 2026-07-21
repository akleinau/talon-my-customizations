mode: command
-

# voice command to start wispr
whisper start: key(f11)

# special editing mode of wispr 
whisper change:
    key('ctrl-f9:down')
        speech.disable()


# gets triggered in autohotkey when wispr is activated or deactivated
key(f13):
    speech.disable()

whisper paste: key(alt-shift-z)
