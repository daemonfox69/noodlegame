/// @description Insert description here
// You can write your code in this editor
x = o_enemy1.x+3;
y = o_enemy1.y+12;
if (parent.object_index == s_player1) {
    if (keyboard_check(vk_space)) {
        var bullet = instance_create_layer(x, y, "Bullets", obj_bullet, parent);
        bullet.direction = parent.direction;
        bullet.speed = 10;
    }
} else if (parent.object_index == s_enemy1) {
    shoot_timer++;
    if (shoot_timer >= 60) { // Shoots every 60 steps (1 second at 60 FPS)
        var player = instance_find(s_player1, 0);
        if (player != noone) {
            parent.direction = point_direction(parent.x, parent.y, player.x, player.y);
            var bullet = instance_create_layer(x, y, "Bullets", obj_bullet, parent);
            bullet.direction = parent.direction;
            bullet.speed = 10;
            shoot_timer = 0;
        }
    }
}
