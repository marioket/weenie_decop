if (obj_player.state == 3 || obj_player.state == 5 || obj_player.state == 6 || obj_player.state == 4)
{
    instance_create(x, y, obj_carcrash)
    obj_player.state = 23
    obj_player.vsp = -5
    obj_player.cardashing = 0
    obj_player.incar = 0
}


