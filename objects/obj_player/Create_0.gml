// These lines go in the Create Event
move_speed = 1; // Maximum speed
acceleration = 0.7; // How quickly speed increases
deceleration = 0.7; // How quickly speed decreases when not moving
friction = 0.7; // Constant drag

// Initialize horizontal and vertical speed
h_speed = 0;
v_speed = 0;
tilemap = layer_tilemap_get_id("Tiles_Col");

hp = 10;
hp_total = hp;
damage = 1;
charge = 0;

// testing the commit