if place_meeting(x, (y - 1), obj_player)
{
    image_speed = 0.25
    obj_player.vsp = -20
}
if place_meeting(x, (y - 1), obj_player2)
{
    image_speed = 0.25
    obj_player2.vsp = -20
}
if (floor(image_index) == 4)
{
    image_index = 0
    image_speed = 0
}


