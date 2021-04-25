if (!surface_exists(surf)) surf = surface_create(room_width, room_height);
surface_set_target(surf);
draw_clear(c_black);

gpu_set_blendmode(bm_subtract);
draw_sprite_ext(s_Light, 0, x, y, image_xscale * 3, image_yscale * 3, 0, c_white, 1);

for (var i = 0, iLen = instance_number(obj_Bullet); i < iLen; i ++)
{
	var _inst = instance_find(obj_Bullet, i);
	draw_sprite_ext(s_Light, 0, _inst.x, _inst.y, _inst.image_xscale + random_range(-0.02, 0.02), _inst.image_yscale + random_range(-0.02, 0.02), 0, c_white, _inst.image_alpha);
}
for (var i = 0, iLen = instance_number(obj_Text); i < iLen; i ++)
{
	var _inst = instance_find(obj_Text, i);
	draw_sprite_ext(s_Light, 0, _inst.x, _inst.y, _inst.image_xscale + random_range(-0.02, 0.02), _inst.image_yscale + random_range(-0.02, 0.02), 0, c_white, _inst.image_alpha);
}

gpu_set_blendmode(bm_normal);

surface_reset_target();

draw_self();