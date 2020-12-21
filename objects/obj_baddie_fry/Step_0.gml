if (vsp < 12)
    vsp += grav
image_speed = 0.25
if (dying == 0)
{
    sprite_index = spr_baddie_fry
    hsp = (image_xscale * movespeed)
    if (place_meeting((x + 8), y, obj_wall) && (image_xscale == 1))
        image_xscale = -1
    if (place_meeting((x - 8), y, obj_wall) && (image_xscale == -1))
        image_xscale = 1
	if (!place_meeting((x + 15), y + 31, obj_wall) && (image_xscale == 1))
        image_xscale = -1
    if (!place_meeting((x - 15), y + 31, obj_wall) && (image_xscale == -1))
        image_xscale = 1
}
if (dying == 1)
{
    sprite_index = spr_baddie_fry_dead
    if (itemdrop == 0)
    {
        instance_create(x, y, obj_coin)
        itemdrop = 1
    }
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

