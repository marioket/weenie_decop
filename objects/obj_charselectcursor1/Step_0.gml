scr_getinput()
//y = 128
//if ((-key_left) && selected == 0)
    //global.p1charselect = 1
//if (key_right && selected == 0)
    //global.p1charselect = 2
//if (global.p1charselect == 1)
//{
    //if (obj_charselectcursor2.activated == 1)
        //global.p2charselect = 2
    //x = obj_wienerselect.x
//}
/*if (global.p1charselect == 2)
{
    if (obj_charselectcursor2.activated == 1)
        global.p2charselect = 1
    x = obj_burgselect.x
}*/
if (key_jump && global.p1charselect == 1)
{
    selected = 1
    //if (obj_charselectcursor2.activated == 1)
        //room_instance_add(room0, 141, 334, obj_player2)
    global.p1charselect = 1
    if (!instance_exists(obj_handS))
        instance_create(obj_charselectcursor1.x, obj_charselectcursor1.y, obj_handS)
    visible = false
}
/*if (key_jump && global.p1charselect == 2)
{
    selected = 1
    if (obj_charselectcursor2.activated == 1)
        room_instance_add(room0, 141, 334, obj_player2)
    global.p1charselect = 2
    if (!instance_exists(obj_handS))
        instance_create(obj_charselectcursor1.x, obj_charselectcursor1.y, obj_handS)
    visible = false
    if (global.multiplayer == 1)
    {
        obj_charselectcursor2.visible = false
        instance_create(obj_charselectcursor2.x, obj_charselectcursor2.y, obj_handS2)
    }
}


