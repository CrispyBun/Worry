// Get inputs
var left = max(keyboard_check(vk_left), keyboard_check(ord("A")));
var right = max(keyboard_check(vk_right), keyboard_check(ord("D")));
var up = max(keyboard_check(vk_up), keyboard_check(ord("W")));
var down = max(keyboard_check(vk_down), keyboard_check(ord("S")));

// Calculate some stuff
var isMoving = (abs(left - right) || abs(up - down));

if (isMoving && !isMovingPrevious)
{
	audio_play_sound(snd_Step, 5, false);
	justStepped = true;
	alarm[0] = room_speed / 4;
}

isMovingPrevious = isMoving;

// Calculate speed and direction
var spd = maxspd * isMoving;
var dir = point_direction(0, 0, (right - left), (down - up));

// Break speed and direction down into X and Y components
hsp = lengthdir_x(spd, dir);
vsp = lengthdir_y(spd, dir);

// Collisions
if (place_meeting(x + hsp, y, obj_Wall))
{
	hsp = 0;
}
if (place_meeting(x, y + vsp, obj_Wall))
{
	vsp = 0;
}
if (place_meeting(x + hsp, y + vsp, obj_Wall))
{
	hsp = 0;
	vsp = 0;
}

// Move
x += hsp;
y += vsp;

// Depth
depth = -y;

// Animate
if (right - left != 0)
{
	image_xscale = image_scale * (right - left);
}

if (isMoving) sprite_index = s_Player_walk;
else sprite_index = s_Player_idle;

if (global.boxesLeft != boxesLeftPrevious)
{
	audio_sound_gain(snd_Noise, 0.5 / (global.boxesLeft + 1), 500);
}

boxesLeftPrevious = global.boxesLeft;