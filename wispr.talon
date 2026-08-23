mode: command
-

# voice command to start wispr
whisper start: key(f11)
whisper: key(f11)

# special editing mode of wispr 
whisper change:
    key('ctrl-f9:down')
        speech.disable()


# gets triggered in autohotkey when wispr is activated or deactivated
key(f13):
    speech.disable()

whisper paste: key(alt-shift-z)

# improve spelling and grammar
whisper spellcheck: key(win-alt-4)

# format
whisper format: key(win-alt-5)