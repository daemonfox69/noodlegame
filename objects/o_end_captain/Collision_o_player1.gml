/// @description Move to next room

with (o_player1)
{
	if (hascontrol)
	{
		hascontrol = false
		slide_transition(TRANS_MODE.GOTO,rm_menu);
	}
	
}