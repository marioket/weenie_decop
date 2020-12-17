move_towards_point(obj_player.x, obj_player.y, 8)
image_speed = 0.25
if (global.player_hp > 0)
{
    instance_destroy()
    instance_create(x, y, obj_deadeffect)
}

