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
    "Charlie":c_orange,
}
welcome_dialog = [
{
    name: "Scientist",
    msg: "test"
},
]
compassiontest1 =  [
{
    name: "You",
    msg: "test"
}
]
snow_diag1 = [
{
    name: "You",
    msg: "test"
}
]