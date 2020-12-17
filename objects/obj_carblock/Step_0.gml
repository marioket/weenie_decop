if (hp <= 0)
    instance_destroy()
if instance_exists(obj_player)
{
    if (place_meeting((x + 1), y, obj_player) || (place_meeting((x - 1), y, obj_player) || place_meeting(x, (y + 1), obj_player)))
    {
        if (obj_player.state == 6)
        {
            instance_destroy()
            instance_create((x + 16), y, obj_debris2)
            instance_create((x + 16), y, obj_debris2)
            instance_create((x + 16), y, obj_debris2)
            instance_create((x + 16), y, obj_debris2)
            obj_camera.shake = 1
            obj_camera.alarm[0] = 10
        }
    }
    if (place_meeting((x + 1), y, obj_player) || (place_meeting((x - 1), y, obj_player) || (place_meeting(x, (y + 1), obj_player) || place_meeting(x, (y - 1), obj_player))))
    {
        if (obj_player.cardashing == 1)
        {
            instance_destroy()
            instance_create((x + 16), y, obj_debris2)
            instance_create((x + 16), y, obj_debris2)
            instance_create((x + 16), y, obj_debris2)
            instance_create((x + 16), y, obj_debris2)
            obj_camera.shake = 1
            obj_camera.alarm[0] = 10
        }
    }
}
if instance_exists(obj_player2)
{
    if (place_meeting((x + 1), y, obj_player2) || (place_meeting((x - 1), y, obj_player2) || place_meeting(x, (y + 1), obj_player2)))
    {
        if (obj_player2.state == 6)
        {
            instance_destroy()
            instance_create((x + 16), y, obj_debris2)
            instance_create((x + 16), y, obj_debris2)
            instance_create((x + 16), y, obj_debris2)
            instance_create((x + 16), y, obj_debris2)
            obj_camera.shake = 1
            obj_camera.alarm[0] = 10
        }
    }
}


