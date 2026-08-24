
add text: 
    insert("\\added{}")
    key("left")

replace text:
    key("{")
    key("left")
    key("left")
    insert("\\replaced{}")
    key("left")

delete text:
    key("{")
    key("left")
    key("left")
    insert("\\deleted")

citation:
    insert("\\cite{}")
    key("left")  

new block:
    key("enter")
    key("enter")
    key("up")
