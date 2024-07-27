// Get player input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

// Calc movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,o_dock2)) && (key_jump)
{
	vsp = -12;	
}

//Horizontal movement
if (place_meeting(x+hsp,y,o_dock2))
{
	while (!place_meeting(x+sign(hsp),y,o_dock2))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertictal movement
if (place_meeting(x,y+vsp,o_dock2))
{
	while (!place_meeting(x,y+sign(vsp),o_dock2))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
