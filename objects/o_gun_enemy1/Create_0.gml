/// @description Insert description here
// You can write your code in this editor
weapon = instance_create_layer(x, y, "Weapons", o_gun_enemy1);
weapon.parent = id;
parent = other; // Set in create event when instantiated
if (parent.object_index == s_enemy1) {
    shoot_timer = 0;
}
