# combining sensepilot with wispr and talon voice

I trigger Wispr using a facial gesture through Sensepilot. Since using Talon Voice, I wanted to achieve two things:  
- Mute Talon Voice when I activate Wispr  
- Have a voice command to activate Wispr

As I wanted Wispr to work even when Talon is not active, I used Auto hotkey as the middle man . 

## Triggering Wispr  
- I have a facial gesture in sense pilot configured to trigger a hotkey (F11) when I make the gesture.
- I have a voice command in Talon that also triggers the same hotkey (F11) 

## middle man
I have an Auto hotkey script that listens for the F11 hotkey and...
- triggers shift F9 which activates Wispr
- triggers F13 which is a hotkey that I have configured in Talon to mute itself

## ending Wispr
- I can either use the same facial gesture again which keeps talon voice muted
- or I can use a voice command I added to Talon's sleep mode that also unmutes talon

The voice command is also added as a text snippet inside Wispr that is replaced with nothing.

## Wispr editing mode 
As a bonus, I also added voice commands to enter and leave Wispr's special editing mode. 

# Code 
## wispr.talon
```
mode: command
-

# voice command to start wispr
whisper start: key(f11)

# special editing mode of wispr 
whisper change:
    key('ctrl-f9:down')
        speech.disable()


# f13 is triggered by autohotkey when wispr is activated or deactivated
key(f13):
    speech.disable()
```   

## autohotkey script
```
F11:: {
    SetKeyDelay 0, 500  ; makes sure the keys are registered by wispr
    SendEvent "{F13}"   ; triggers talon voice to mute itself
    SendEvent "+{F9}"   ; toggles wispr on/off
}
```

## sleep.talon
```
mode: sleep
-

# End Wispr's special editing mode. 
whisper change end:
    key('ctrl-f9:up')
    speech.enable()

# End Wispr
whisper end:
    key('f11')
    speech.enable()
```