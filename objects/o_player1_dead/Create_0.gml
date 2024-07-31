hsp = 0;
vsp = 0;
grv = 0.2;
done = 0;

image_speed = 0;
image_index = 0;
screen_shake(6,60);
audio_play_sound(sn_death,10,false);
game_set_speed (30,gamespeed_fps);
with (o_camera) follow = other.id;
