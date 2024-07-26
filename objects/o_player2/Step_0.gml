// Get player input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// Calc movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,o_dock1)) && (key_jump)
{
	vsp = -7;	
}

//Horizontal movement
if (place_meeting(x+hsp,y,o_dock1))
{
	while (!place_meeting(x+sign(hsp),y,o_dock1))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertictal movement
if (place_meeting(x,y+vsp,o_dock1))
{
	while (!place_meeting(x,y+sign(vsp),o_dock1))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
