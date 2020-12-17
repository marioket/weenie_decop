depth = -9999999
global.P_System = part_system_create()
global.Particle1 = part_type_create()
part_type_sprite(global.Particle1, 7, 0, 0, 1)
part_type_scale(global.Particle1, 1, 1)
part_type_color1(global.Particle1, 16777215)
part_type_alpha1(global.Particle1, 1)
part_type_speed(global.Particle1, 10, 10, 0.1, 0)
part_type_direction(global.Particle1, 0, 360, 1, 1)
part_type_orientation(global.Particle1, 0, 360, 1, 1, 1)
part_type_life(global.Particle1, 1, 20)
global.Particle2 = part_type_create()
part_type_sprite(global.Particle2, 5, 0, 0, 1)
part_type_scale(global.Particle2, 1, 1)
part_type_color1(global.Particle2, 16777215)
part_type_alpha1(global.Particle2, 1)
part_type_speed(global.Particle2, 10, 10, 0.1, 0)
part_type_direction(global.Particle2, 0, 150, 1, 1)
part_type_orientation(global.Particle2, 0, 360, 1, 1, 1)
part_type_life(global.Particle2, 20, 40)
global.Particle3 = part_type_create()
part_type_sprite(global.Particle3, 6, 0, 0, 1)
part_type_scale(global.Particle3, 1, 1)
part_type_color1(global.Particle3, 16777215)
part_type_alpha1(global.Particle3, 1)
part_type_speed(global.Particle3, 10, 10, 0.1, 0)
part_type_direction(global.Particle3, 0, 360, 1, 1)
part_type_orientation(global.Particle3, 0, 360, 1, 1, 1)
part_type_life(global.Particle3, 1, 20)
global.player_hp = 7
global.player_rage = 0
global.player_saltshaker = 0
global.player_corndog = 0
global.player_coin = 0
global.handed = 0
global.player2_hp = 7
global.player2_rage = 0
global.player2_saltshaker = 0
global.player2_corndog = 0
global.volume = 0
global.pitch = 0



state = 0
//global.handed = 0
grav = 0.35
hsp = 0
vsp = 0
movespeed = 4
if (global.handed == 0)
    state = 2
if (global.handed == 1)
{
    state = 11
    if (global.checkpoint1activated == 1)
    {
        x = (obj_checkpoint1.x + 300)
        y = (obj_checkpoint1.y - 100)
    }
    if (global.checkpoint2activated == 1)
    {
        x = (obj_checkpoint2.x + 300)
        y = (obj_checkpoint2.y - 100)
    }
}
player = 1
charselect = 1
cutscene = 0
panic_anim = 0
jumpAnim = 1
shoot = 1
dashAnim = 1
double_jump = 0
shoot_right = 0
shoot_left = 0
inv_frames = 0
canClimb = 1
landAnim = 0
jumpDashed = 0
superdashing = 0
mach2 = 0
wall_jumping = 0
super_timer = 200
show_gui = 1
hurted = 0
input_buffer_walljump = 15
input_buffer_jump = 5
maxpayne = 0
cardashing = 0
incar = 0
global.panic = 0
global.p1charselect = 0
//global.player_rage = 0
global.multiplayer = 0
finger = 0
flash = 0


