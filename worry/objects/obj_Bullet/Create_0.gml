// Sprite stuff
image_scale = 0.25;
image_xscale = image_scale;
image_yscale = image_scale;

// I guess im using gamemaker's "speed" for once lol
speed = 2;

// Angle towards player
if (instance_exists(obj_Player))
{
	direction = point_direction(x, y, obj_Player.x, obj_Player.y);
}
image_angle = direction;

// Depth
depth = -4500;

// Phase in
image_alpha = 0;
targetAlpha = 1;