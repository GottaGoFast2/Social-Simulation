function create_dialog(_messages)
{
    if (instance_exists(obj_dialog)) return;
        
    var _inst = instance_create_depth(0, 0, 0, obj_dialog);
    _inst.messages = _messages;
    _inst.current_message = 0;
}

char_colors = {
    "Stickman": c_yellow,
    "You": c_aqua,
    "Bubby": c_white
}
welcome_dialog = [
{
    name: "Stickman",
    msg: "Hey! How's it going?"
},

{
    name: "You",
    msg: "You were very kind in your greeting to Stickman."
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