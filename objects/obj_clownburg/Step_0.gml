if (vsp < 12)
    vsp += grav
image_speed = 0.25
if ((dying == 1) && place_meeting(x, (y + 1), obj_wall))
    hsp = movespeed
if ((floor(image_index) == 21) && ((dying == 0) && (throwed == 0)))
{
    throwed = 1
    with instance_create(x, (y - 70), obj_throwprojectile)
		image_xscale = -other.image_xscale
}
if ((floor(image_index) == 22) && (dying == 0))
    throwed = 0
if (hp <= 0)
{
    sprite_index = spr_burgthrow_dead
    dying = 1
    if (!instance_exists(obj_explosioneffect))
    {
        randomize()
        instance_create((x + random_range(-30, 30)), (y + random_range(-30, 30)), obj_explosioneffect)
    }
    if (alarmo > 0)
    {
        alarmo -= 1
        if (alarmo <= 0)
        {
            instance_destroy()
            instance_create(x, y, obj_deadeffect)
        }
    }
}

if dying = 0
	scr_collideandmove()
else
	scr_collideandmovenowall()

