if (instance_exists(obj_dialog)) exit;

 if (keyboard_check_pressed(vk_space))
{
    create_dialog([
    {
    name: "You",
    msg: "You acknowledged the fourth wall."
    }   
    ])   
}    

tilemap = layer_tilemap_get_id("Tiles_Col");
var _hor = keyboard_check(vk_right) - keyboard_check(vk_left);
var _ver = keyboard_check(vk_down) - keyboard_check(vk_up);

 // var _dir = point_direction(0, 0, _hor, _ver);
// _hor = lengthdir_x(1, _dir);
// _ver = lengthdir_y(1, _dir);


move_and_collide(_hor * move_speed, _ver * move_speed,tilemap);

if (_hor != 0 or _ver != 0)
{
    if (_ver > 0) sprite_index = spr_player_walk_down; 
    else if (_ver < 0) sprite_index = spr_player_walk_up;
    else if (_hor > 0) sprite_index = spr_player_walk_right; 
    else if (_hor < 0) sprite_index = spr_player_walk_left;
}
else 
{
	if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
    else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
    else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
}

// Apply acceleration
h_speed += _hor * acceleration;
v_speed += _ver * acceleration;

// Apply deceleration/friction when no input in a direction
if (_hor == 0) {
    h_speed = lerp(h_speed, 0, deceleration);
}
if (_ver == 0) {
    v_speed = lerp(v_speed, 0, deceleration);
}

// Apply friction constantly
h_speed = lerp(h_speed, 0, friction);
v_speed = lerp(v_speed, 0, friction);

// Clamp speed to maximum
h_speed = clamp(h_speed, -move_speed, move_speed);
v_speed = clamp(v_speed, -move_speed, move_speed);

move_and_collide(h_speed, v_speed, tilemap);

if (hp <= 0)
{
    game_restart();
}