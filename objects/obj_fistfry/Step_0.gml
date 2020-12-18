if (dying == 0)
{
    image_xscale = (-sign(((obj_player.x - x) + 0.5)))
    if (vsp < 12)
        vsp += grav
    image_speed = 0.25
    if (place_meeting((x + 40), y, obj_player) || place_meeting((x - 40), y, obj_player))
        sprite_index = spr_fistfry_attack
    else if (floor(image_index) == 5)
        sprite_index = spr_fistfry_idle
    if (floor(image_index) == 5)
    {
        with (instance_create(x, y, obj_fistfry_hitbox))
            image_xscale = other.image_xscale
    }
}
if (dying == 1)
{
    if (itemdrop == 0)
    {
        instance_create(x, y, obj_coin)
        itemdrop = 1
    }
    sprite_index = spr_fistfry_dead
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

