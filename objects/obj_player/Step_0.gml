switch state
{
    case 0:
        scr_player_normal()
        break
    case 1:
        scr_player_carhurt()
        break
    case 2:
        scr_player_airdrop()
        break
    case 3:
        scr_player_car()
        break
    case 4:
        scr_player_carcrash()
        break
    case 5:
        scr_player_carjump()
        break
    case 6:
        scr_player_cardash()
        break
    case 7:
        scr_player_slidekick()
        break
    case 8:
        scr_player_longjump()
        break
    case 9:
        scr_player_introhub()
        break
    case 37:
        scr_player_intro()
        break
    case 19:
        scr_player_victory()
        break
    case 11:
        scr_player_hand()
        break
    case 38:
        scr_player_headbump()
        break
    case 39:
        scr_player_groundbump()
        break
    case 26:
        scr_player_attack()
        break
    case 27:
        scr_player_balloonhang()
        break
    case 10:
        scr_player_jump()
        break
    case 17:
        scr_player_dash()
        break
    case 13:
        scr_player_duck()
        break
    case 15:
        scr_player_shoot()
        break
    case 14:
        scr_player_land()
        break
    case 16:
        scr_player_hurt()
        break
    case 18:
        scr_player_skid()
        break
    case 20:
        scr_player_climb()
        break
    case 21:
        scr_player_superjump()
        break
    case 22:
        scr_player_shootland()
        break
    case 23:
        scr_player_dashjump()
        break
    case 24:
        scr_player_dashland()
        break
    case 25:
        scr_player_dashslide()
        break
    case 28:
        scr_player_attackup()
        break
    case 29:
        scr_player_attackdown()
        break
    case 30:
        scr_player_dashair()
        break
    case 31:
        scr_player_supershoot()
        break
    case 32:
        scr_player_superdash()
        break
    case 33:
        scr_player_walljump()
        break
    case 34:
        scr_player_superattack()
        break
    case 35:
        scr_player_jumphurt()
        break
    case 36:
        scr_player_swim()
        break
}

//instance_deactivate_all(true)
//instance_activate_region((view_xview[0] - 64), (view_yview[0] - 64), (view_wview[0] + 128), (view_hview[0] + 128), true)
//instance_activate_object(obj_checkpoint1)
//instance_activate_object(obj_checkpoint2)
//instance_activate_object(obj_player)
//instance_activate_object(obj_player2)
//instance_activate_object(obj_disc)
//instance_activate_object(obj_lava)
//instance_activate_object(obj_camera)
//instance_activate_object(obj_hand)
//instance_activate_object(obj_backgroundmoving)
//instance_activate_object(obj_wall)
//instance_activate_object(obj_debris1)
//instance_activate_object(obj_debris2)
//instance_activate_object(global.P_System)
//instance_activate_object(global.Particle1)
if (inv_frames == 1)
    image_alpha = 0.5
else
    image_alpha = 1
if (obj_camera.bosscamera == 1)
{
    x = clamp(x, view_xview[0], (view_xview[0] + 640))
    y = clamp(y, view_yview[0], (view_yview[0] + 480))
}
if (global.p1charselect == 1)
    charselect = 1
if (global.p1charselect == 2)
    charselect = 2
if (state != 11)
{
    if (place_meeting(x, (y + 1), obj_movingwall) || place_meeting((x - 1), y, obj_movingwall))
        hspeed = 1
    else
        hspeed = 0
}
if (input_buffer_walljump < 15)
    input_buffer_walljump++
if (input_buffer_jump < 5)
    input_buffer_jump++
if keyboard_check_pressed(vk_insert)
{
    global.multiplayer = 0
    game_restart()
}
if keyboard_check_pressed(vk_delete)
    instance_create(x, y, obj_hand)
if (finger == 5)
{
    scr_sound(14)
    finger = 0
    if (global.player_hp < 7)
        global.player_hp += 1
    //part_particles_create(global.P_System, obj_player.x, obj_player.y, global.Particle2, 4)
    obj_player.flash = 1
    background_visible[2] = 1
    obj_backgroundmoving.alarm[0] = 30
}
if (room == hub_world2)
{
    global.panic = 1
    hspeed = 3
}
if (flash && alarm[4] <= 0)
    alarm[4] = (0.04 * room_speed)


