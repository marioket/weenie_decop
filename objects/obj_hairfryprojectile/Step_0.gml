if (vsp < 12)
    vsp += grav
image_speed = 0.25
if (place_meeting(x, (y + 1), obj_wall) || (place_meeting(x, (y - 1), obj_wall) || (place_meeting((x + 1), y, obj_wall) || place_meeting((x - 1), y, obj_wall))))
{
    scr_sound(7)
    instance_create(x, y, obj_splooteffect)
    instance_destroy()
}
scr_collideandmove()

