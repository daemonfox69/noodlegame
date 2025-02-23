/// @description Insert description here
// You can write your code in this editor
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);
var handled = false;
if (place_meeting(x, y, o_player1)) {
    if (shooter_type == o_player1) {
        o_player1.hp--;
        handled = true;
    }
}
if (place_meeting(x, y, o_enemy1)) {
    if (shooter_type == o_player1) {
        var enemy = instance_place(x, y, o_enemy1);
        instance_destroy(enemy);
        handled = true;
    }
}
if (handled) {
    instance_destroy();
}