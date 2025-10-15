if(mouse_check_button(mb_left) && position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),obj_titlego)) == true
{
    if (image_index == 1)
{
    image_index = 0;
    audio_resume_all()
}
else if (image_index == 0)
{
	image_index = 1;
    audio_pause_all()
}
}