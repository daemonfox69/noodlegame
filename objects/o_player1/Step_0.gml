#region //Get player input

if (hascontrol)
{
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
	
	if (key_left) || (key_right) || (key_jump)
	{
		controller = 0;	
	}
	
	if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2)
	{
		key_left = abs(min(gamepad_axis_value(0,gp_axislh),0));
		key_right = max(gamepad_axis_value(0,gp_axislh),0);
		controller = 1;
	}
	
	if (gamepad_button_check_pressed(0,gp_face1))
	{
		key_jump = 1;
		controller = 1;
	}
}
else
{
	key_left = 	0;
	key_right = 0;
	key_jump = 0;
}

#endregion

#region // Calc movement

var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,o_dock2)) && (key_jump)
{
	vsp = -12;	
}

#endregion

#region //Collide and move
//Horizontal collission
if (place_meeting(x+hsp,y,o_dock2))
{
	while (!place_meeting(x+sign(hsp),y,o_dock2))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertictal collission
if (place_meeting(x,y+vsp,o_dock2))
{
	while (!place_meeting(x,y+sign(vsp),o_dock2))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
#endregion


#region //Animation
if (place_meeting(x,y+1,o_dock2))
{
	sprite_index = s_player1;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = 	s_player1;
	}
	else
	{
		sprite_index = s_player1;	
	}
}
	
if (hsp != 0) image_xscale = sign(hsp);
#endregion