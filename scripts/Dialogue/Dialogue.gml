function create_dialog(_messages)
{
    if (instance_exists(obj_dialog)) return;
        
    var _inst = instance_create_depth(0, 0, 0, obj_dialog);
    _inst.messages = _messages;
    _inst.current_message = 0;
}

char_colors = {
    "Scientist": c_aqua,
    "You": c_white,
}
welcome_dialog = [
{
    name: "Scientist",
    msg: "Welcome! Use LEFT CLICK on your mouse to progress through dialogue, and make decisions."
},

{
    name: "Scientist",
    msg: "Choose wisely!"
},
]

snow_diag1 = [
{
    name: "Bubby",
    msg: "Hi there!"
},
{
    name: "You",
    msg: "This time, you greeted Bubby less kindly than you did Stickman because you were envious that Bubby had four animation frames while you only had two."
},
]