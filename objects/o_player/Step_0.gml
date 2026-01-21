/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1D0E068B
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Direction from player to mouse$(13_10)var dir_to_mouse = point_direction(x, y, mouse_x, mouse_y);$(13_10)$(13_10)// Movement state$(13_10)was_moving = false;$(13_10)$(13_10)// If the instance is moving (using built-in motion)$(13_10)if (speed != 0) {$(13_10)    image_speed = speed / 10; // bigger divisor = slower animation$(13_10)} else {$(13_10)    image_speed = 0;   // stop on current frame (or set a specific one)$(13_10)    image_index = 0;   // optional: force first frame as idle pose$(13_10)}$(13_10)// Rotate sprite to face the mouse$(13_10)// If your sprite is drawn facing RIGHT, use:$(13_10)//image_angle = dir_to_mouse;$(13_10)$(13_10)// If your sprite is drawn facing UP, use this instead:$(13_10)image_angle = dir_to_mouse -90;$(13_10)$(13_10)var move_speed = 3;$(13_10)$(13_10)// When W is held, walk toward the mouse$(13_10)if (keyboard_check(ord("W"))) {$(13_10)    // Movement direction should be the *true* direction to the mouse,$(13_10)    // not necessarily the same as image_angle if you added +90 above.$(13_10)    direction = dir_to_mouse;$(13_10)    speed = move_speed;$(13_10)	$(13_10)	$(13_10)} else {$(13_10)    speed = 0; // or use friction if you want sliding$(13_10)}$(13_10)$(13_10)//point_direction(x,y,mouse_x,mouse_y)-90$(13_10)$(13_10)var moving = (speed != 0);$(13_10)$(13_10)if (moving) {$(13_10)    // Only start the walk sound if it's not already playing$(13_10)    if (!audio_is_playing(snd_steps)) {$(13_10)        audio_play_sound(snd_steps, 0, false); // false = don't loop$(13_10)    }$(13_10)} else {$(13_10)    // Optional: cut the sound when you stop$(13_10)   // audio_stop_sound(snd_steps);$(13_10)}"
/// @description Execute Code
// Direction from player to mouse
var dir_to_mouse = point_direction(x, y, mouse_x, mouse_y);

// Movement state
was_moving = false;

// If the instance is moving (using built-in motion)
if (speed != 0) {
    image_speed = speed / 10; // bigger divisor = slower animation
} else {
    image_speed = 0;   // stop on current frame (or set a specific one)
    image_index = 0;   // optional: force first frame as idle pose
}
// Rotate sprite to face the mouse
// If your sprite is drawn facing RIGHT, use:
//image_angle = dir_to_mouse;

// If your sprite is drawn facing UP, use this instead:
image_angle = dir_to_mouse -90;

var move_speed = 3;

// When W is held, walk toward the mouse
if (keyboard_check(ord("W"))) {
    // Movement direction should be the *true* direction to the mouse,
    // not necessarily the same as image_angle if you added +90 above.
    direction = dir_to_mouse;
    speed = move_speed;
	
	
} else {
    speed = 0; // or use friction if you want sliding
}

//point_direction(x,y,mouse_x,mouse_y)-90

var moving = (speed != 0);

if (moving) {
    // Only start the walk sound if it's not already playing
    if (!audio_is_playing(snd_steps)) {
        audio_play_sound(snd_steps, 0, false); // false = don't loop
    }
} else {
    // Optional: cut the sound when you stop
   // audio_stop_sound(snd_steps);
}