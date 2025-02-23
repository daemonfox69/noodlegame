/// @description Insert description here
// You can write your code in this editor

if (instance_exists(fired_by)) {
    shooter_type = fired_by.object_index; // Example usage
} else {
    instance_destroy();
}

fired_by = argument0;