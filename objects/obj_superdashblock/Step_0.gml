if ((place_meeting((x + 1), y, obj_player) || (place_meeting((x - 1), y, obj_player) || (place_meeting(x, (y + 1), obj_player) || place_meeting(x, (y - 1), obj_player)))) && (obj_player.superdashing == 1))
{
    obj_camera.shake = 1
    obj_camera.alarm[0] = 10
    instance_create((x + 16), y, obj_debris2)
    instance_create((x + 16), y, obj_debris2)
    instance_create((x + 16), y, obj_debris2)
    instance_create((x + 16), y, obj_debris2)
    instance_destroy()
}
if ((place_meeting((x + 1), y, obj_player2) || (place_meeting((x - 1), y, obj_player2) || (place_meeting(x, (y + 1), obj_player2) || place_meeting(x, (y - 1), obj_player2)))) && (obj_player2.superdashing == 1))
{
    obj_camera.shake = 1
    obj_camera.alarm[0] = 10
    instance_create((x + 16), y, obj_debris2)
    instance_create((x + 16), y, obj_debris2)
    instance_create((x + 16), y, obj_debris2)
    instance_create((x + 16), y, obj_debris2)
    instance_destroy()
}


