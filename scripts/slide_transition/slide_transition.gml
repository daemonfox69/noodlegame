/// @Desc slide transition (mode, targetroom)
/// @arg Mode sets transition mode between next, restart and goto.
/// @arg Target sets target room when using the go to mode.

with (o_transit_dock1)
{
	mode = argument[0];
	if (argument_count > 1) target = argument[1]; 
}