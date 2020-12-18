if (vsp < 12)
    vsp += grav
if (image_index == 9)
    instance_create((x + 10), (y - 45), obj_hairfryprojectile)
if (dying == 1)
{
    if (itemdrop == 0)
    {
        instance_create(x, y, obj_coin)
        itemdrop = 1
    }
    sprite_index = spr_hairfry_dead
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

