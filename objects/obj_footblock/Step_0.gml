if (hp <= 0)
{
    instance_create(x, y, obj_flyingpep)
    global.player_coin -= 20
    instance_destroy()
}


