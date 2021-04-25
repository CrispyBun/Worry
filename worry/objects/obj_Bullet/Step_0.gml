image_alpha = lerp(image_alpha, targetAlpha, 0.1);

if (x < -sprite_width || y < -sprite_width || x > room_width + sprite_width || y > room_height + sprite_width)
{
	instance_destroy();
}