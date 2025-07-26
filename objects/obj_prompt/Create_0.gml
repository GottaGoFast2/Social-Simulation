// --- Prompt Data (Set by whoever creates this prompt) ---
prompt_text = "Click to continue..."; // Default text, will be overridden
callback_function = noone;            // Function to call when clicked (default to none)

// --- Display Settings (Adjust as needed) ---
prompt_x = display_get_gui_width() / 2;   // Default X position (center of GUI)
prompt_y = display_get_gui_height() / 2;  // Default Y position (center of GUI)

// --- Font and Colors ---
// Make sure you have a font asset (e.g., fnt_Dialogue or create a new one: fnt_Prompt)
prompt_font = Font1; // Use your existing dialogue font, or create a new one
text_color = c_white;       // Color of the prompt text