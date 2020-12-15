if place_meeting((x + floor(hsp)), y, obj_wall)
{
    while (!place_meeting((x + sign(hsp)), y, obj_wall))
        x += sign(hsp)
    hsp = 0
}
x += hsp
if place_meeting(x, (y + floor(vsp)), obj_wall)
{
    while (!place_meeting(x, (y + sign(vsp)), obj_wall))
        y += sign(vsp)
    vsp = 0
}
y += floor(vsp)
