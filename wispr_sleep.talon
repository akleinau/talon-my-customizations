mode: sleep
tag: user.wispr 
-

key(f13):
    speech.enable()
    user.wispr_tag_deactivate()

whisper change:
    key('ctrl-f9:up')
    speech.enable()
    user.wispr_tag_deactivate()

whisper (end):
    key('f11')


whisper escape:
    key(esc)
    key(f13)
