draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_dkgray, image_alpha);

if (triggered) image_alpha = lerp(image_alpha, targetAlpha, 0.05);