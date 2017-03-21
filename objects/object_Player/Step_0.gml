/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 30D75FEC
/// @DnDArgument : "code" "key_right = keyboard_check(vk_right);$(13_10)key_left = -keyboard_check(vk_left);$(13_10)key_jump = keyboard_check_pressed(vk_space);$(13_10)$(13_10)move = key_left + key_right;$(13_10)hsp = move * movespeed;$(13_10)if (vsp < 10) vsp += grav;$(13_10)$(13_10)// jump$(13_10)if (place_meeting(x,y+1,obj_wall))$(13_10){$(13_10)	vsp = key_jump * -jumpspeed;$(13_10)}$(13_10)$(13_10)// vertical collision$(13_10)if (place_meeting(x,y+vsp,obj_wall))$(13_10){$(13_10)	while(!place_meeting(x,y+sign(vsp),obj_wall))$(13_10)	{$(13_10)		y += sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)$(13_10)// $(13_10)if (place_meeting(x+hsp,y,obj_wall))$(13_10){$(13_10)	while(!place_meeting(x+sign(hsp),y,obj_wall))$(13_10)	{$(13_10)		x += sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)$(13_10)if (move !=0){$(13_10)	image_xscale=-move;$(13_10)}$(13_10)$(13_10)$(13_10)x += hsp;$(13_10)y += vsp;$(13_10)$(13_10)if (x<=10)$(13_10){$(13_10)	x = 10;$(13_10)}$(13_10)$(13_10)camera_x = x-100;$(13_10)camera_y = 0;$(13_10)$(13_10)if (camera_x < 0)$(13_10){$(13_10)	camera_x = 0;$(13_10)}$(13_10)$(13_10)camera_set_view_pos(view_camera[0],camera_x,camera_y)"

{
	key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space);

move = key_left + key_right;
hsp = move * movespeed;
if (vsp < 10) vsp += grav;

// jump
if (place_meeting(x,y+1,obj_wall))
{
	vsp = key_jump * -jumpspeed;
}

// vertical collision
if (place_meeting(x,y+vsp,obj_wall))
{
	while(!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

// 
if (place_meeting(x+hsp,y,obj_wall))
{
	while(!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

if (move !=0){
	image_xscale=-move;
}


x += hsp;
y += vsp;

if (x<=10)
{
	x = 10;
}

camera_x = x-100;
camera_y = 0;

if (camera_x < 0)
{
	camera_x = 0;
}

camera_set_view_pos(view_camera[0],camera_x,camera_y)
}

