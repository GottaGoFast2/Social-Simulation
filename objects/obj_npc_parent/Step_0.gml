if (instance_exists(obj_dialog)) exit;
    
if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    can_talk = true;
    if (keyboard_check(text_key))
    {
        create_dialog(dialog);
    }
}
else {
	can_talk = false;
}
obj_npc1.sprite_index = spr_npc1;