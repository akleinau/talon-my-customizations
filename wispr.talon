whisper start: key(shift-f9)

# hold down control F9 
whisper change:
    key('ctrl-f9:down')
    mode.enable('sleep')
    mode.disable('command')

whisper end:
    key('ctrl-f9:up')