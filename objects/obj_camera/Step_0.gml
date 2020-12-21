//scr_getinput()
x = obj_player.x
y = obj_player.y


if (bosscamera == 1)
{
    view_xview[0] = clamp(view_xview[0], 0, (room_width - view_wview[0]))
    view_yview[0] = clamp(view_yview[0], 0, (room_height - view_hview[0]))
}
else
{
    if (!instance_exists(obj_player))
    {
        if (obj_player2.cutscene == 0)
        {
            x = obj_player2.x
            y = obj_player2.y
        }
    }
    if (!instance_exists(obj_player2))
    {
        if (obj_player.cutscene == 0)
        {
            x = obj_player.x
            y = obj_player.y
        }
    }
    if (instance_exists(obj_player2) && instance_exists(obj_player))
    {
        x = ((obj_player2.x / 2) + (obj_player.x / 2))
        y = ((obj_player2.y / 2) + (obj_player.y / 2))
    }
}
if (shake == 1)
{
    x += random_range(-5, 5)
    y += random_range(-5, 5)
}


