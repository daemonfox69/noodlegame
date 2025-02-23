/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left)) {
    var bullet = instance_create_layer(x, y, "bullet", o_bullet, {fired_by: parent});
    bullet.direction = direction;
    bullet.speed = 10;
}