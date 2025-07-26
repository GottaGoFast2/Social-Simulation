// Example scenario: The player just completed a quest, show an "OK" prompt.

// Create the prompt instance
var _prompt = instance_create_layer(0, 0, "GUI_Layer", obj_Prompt); // Make sure "GUI_Layer" exists

// Customize the prompt
_prompt.prompt_text = "testing!\n testing"; // \n creates a new line
_prompt.prompt_x = display_get_gui_width() / 2;
_prompt.prompt_y = display_get_gui_height() / 2;

// Assign a function to run when the prompt is clicked
_prompt.callback_function = function() {
    show_debug_message("OK button was clicked!");
    // You can put any code here that should run after the prompt is clicked
    // For example:
    // room_goto(rm_NextLevel);
    // global.player_quest_status = "rewarded";
};