if (!initialized) {
    if (fired_by != noone && instance_exists(fired_by)) {
        shooter_type = fired_by.object_index;
        // Add any other initialization code here
    } else {
        // If fired_by is noone or doesn't exist, destroy the bullet
        instance_destroy();
        exit;  // Exit the event to prevent further code execution
    }
    initialized = true;  // Ensure this runs only once
}

// Regular movement code (executes every step)
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);