/// @description Insert description here
// You can write your code in this editor
// o_gun_enemy1 Step event
if (instance_exists(parent)) {
    x = parent.x;
    y = parent.y; // If you're also setting the y position, include it here
    // Add any other code that depends on parent
} else {
    instance_destroy(); // Destroy the gun if its parent is gone
}

direction = parent.direction;
shoot_timer++;