if (vsp < 9)
    vsp += grav
image_speed = 0.25
if (dying == 0)
    hsp = (image_xscale * movespeed)
if ((!place_meeting(x, (y + 1), obj_wall)) && (dying == 0))
    movespeed = 2
if (place_meeting(x, (y + 1), obj_wall) && (dying == 0))
    movespeed = 0
if (place_meeting(x, (y + 1), obj_wall) && (dying == 0))
{
    sprite_index = spr_burgjump_land
    if (floor(image_index) == 3)
        vsp = -10
}
if (!place_meeting(x, (y + 1), obj_wall))
{
    sprite_index = spr_burgjump_air
    if (floor(image_index) == 1)
        image_speed = 0
}
if place_meeting((x + 1), y, obj_wall)
    image_xscale = -1
if place_meeting((x - 1), y, obj_wall)
    image_xscale = 1
if (dying == 1)
{
    sprite_index = spr_burgjump_dead
    if (!instance_exists(obj_explosioneffect))
    {
        randomize()
        instance_create((x + random_range(-30, 30)), (y + random_range(-30, 30)), obj_explosioneffect)
    }
}

if dying = 0
	scr_collideandmove()
else
	scr_collideandmovenowall()


