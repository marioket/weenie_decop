instance_destroy()
obj_player.state = 11
obj_player.alarm[0] = 100
obj_player.cutscene = 1
if (obj_player.incar == 1)
    instance_create(x, y, obj_car)

