if (done == 0)
{
	vsp = vsp + grv;

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
		if (vsp > 0)
		{
			done = 1;
			image_index = 0;
		}
		while (!place_meeting(x,y+sign(vsp),o_dock2))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
}