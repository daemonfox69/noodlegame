vsp = vsp + grv;

//Horizontal movement
if (place_meeting(x+hsp,y,o_dock2))
{
	while (!place_meeting(x+sign(hsp),y,o_dock2))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
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
