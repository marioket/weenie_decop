if (obj_player.show_gui == 1)
{
    draw_set_color(c_white)
    draw_set_font(font)
    draw_sprite_ext(spr_flyingpep, image_index, 210, 110, 2, 2, 0, c_white, 1)
    draw_text(135, 95, global.player_coin)
}


