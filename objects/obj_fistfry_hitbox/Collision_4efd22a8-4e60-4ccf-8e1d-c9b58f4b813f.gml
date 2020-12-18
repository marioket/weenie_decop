if ((!instance_exists(obj_hurteffect)) && (obj_player.inv_frames == 0))
    instance_create(obj_player.x, obj_player.y, obj_hurteffect)
if ((obj_player.inv_frames == 0) && ((obj_player.state != 11) && ((obj_player.state != 19) && ((obj_player.state != 34) && (obj_player.state != 31)))))
{
    global.player_hp -= 1
    obj_player.inv_frames = 1
    obj_player.hurted = 1
    obj_player.state = 16
    obj_player.image_index = 0
    instance_create(obj_player.x, obj_player.y, obj_hurteffect)
}

