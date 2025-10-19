if (current_message < 0) exit;
    
var _str = messages[current_message].msg;

if (current_char < string_length(_str))
{
    current_char +=char_speed * (1 + mouse_check_button(input_key)); // no real
    draw_message = string_copy(_str, 0, current_char);
}
else if (mouse_check_button_pressed(input_key))
{
    current_message++;
    if (current_message >= array_length(messages))
    {
        instance_destroy();
    }  
    else
    {
        current_char = 0; 
    }   
}