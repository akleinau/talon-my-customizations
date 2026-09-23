from talon import Module, Context

ctx = Context()
mod = Module()
# this declares a tag in the user namespace (i.e. 'user.tabs')
mod.tag("wispr", desc="active when  is active")

ctx.tags = []

@mod.action_class
class WisprActions:
    def wispr_tag_activate(): 
        """activates the whisper tag"""
        ctx.tags = ["user.wispr"]

    def wispr_tag_deactivate(): 
        """deactivates the whisper tag"""
        ctx.tags = []