if (room == Results)
{
    draw_set_text_alignment(fa_center_middle, c_aqua, font_results) // berry important thing
    draw_text(700,150,"Your karma score is:")
    draw_text(600,250,global.k_points)
    draw_text(750,250," points")
}

draw_self()