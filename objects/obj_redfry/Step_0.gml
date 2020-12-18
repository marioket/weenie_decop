if (vsp < 12)
    vsp += grav
image_speed = 0.25
if (dying == 0)
{
    hsp = (image_xscale * movespeed)
    if (place_meeting((x + 1), y, obj_wall) && (image_xscale == 1))
        image_xscale = -1
    if (place_meeting((x - 1), y, obj_wall) && (image_xscale == -1))
        image_xscale = 1
    if place_meeting(x, (y + 1), obj_wall)
        sprite_index = spr_redfry_walk
    else if (!place_meeting(x, (y + 1), obj_wall))
        sprite_index = spr_redfry_attack
}
if (dying == 1)
{
    if (itemdrop == 0)
    {
        with (instance_create(x, y, obj_redfryboots))
            image_xscale = other.image_xscale
        instance_create(x, y, obj_coin)
        itemdrop = 1
    }
    sprite_index = spr_redfry_die
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

