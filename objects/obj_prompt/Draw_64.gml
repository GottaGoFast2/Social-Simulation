// Make sure the sprite is drawn at its origin, centered on the prompt_x/y
draw_self(); // Draws the assigned sprite (spr_PromptBackground)

// --- Draw Text ---
draw_set_font(prompt_font);
draw_set_halign(fa_center); // Center text horizontally
draw_set_valign(fa_middle); // Center text vertically
draw_set_color(text_color);

// Draw the prompt text over the background.
// Adjust the position (prompt_x, prompt_y) to perfectly center it on the sprite's origin.
draw_text(prompt_x, prompt_y, prompt_text);

// Reset draw settings (important!)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white); // Reset to default white