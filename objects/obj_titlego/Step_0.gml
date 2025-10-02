if(mouse_check_button(mb_left) && position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),obj_titlego)) == true
{
    audio_stop_all()
    room_goto(Title)
}