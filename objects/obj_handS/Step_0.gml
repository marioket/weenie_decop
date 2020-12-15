if (global.p1charselect == 1)
    x = obj_weinerselect.x
if (global.p1charselect == 2)
    x = obj_burgselect.x
if place_meeting(x, (y - 50), obj_weinerselect)
{
    sprite_index = spr_player_hand2
    obj_weinerselect.visible = false
    //obj_burgselect.sprite_index = spr_player2_jumphurt
    //obj_burgselect.image_speed = 0
    vspeed = -3
    with (obj_burgselect)
    {
        gravit = 1
        vsp = -5
        hsp = 2
    }
}
/*if place_meeting(x, (y - 50), obj_burgselect)
{
    sprite_index = spr_player2_hand2
    obj_burgselect.visible = false
    obj_wienerselect.sprite_index = spr_player_jumphurt
    obj_wienerselect.image_speed = 0
    vspeed = -3
    with (obj_wienerselect)
    {
        gravit = 1
        vsp = -5
        hsp = -2
    }
}
*/

