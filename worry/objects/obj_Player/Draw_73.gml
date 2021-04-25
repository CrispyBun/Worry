var _unif_intensity = shader_get_uniform(sdr_Noise, "intensity");
var _unif_rand = shader_get_uniform(sdr_Noise, "rand_seed");

var _intensity = 50;
switch (global.boxesLeft)
{
	default:
	case 4: _intensity = 50; break;
	case 3: _intensity = 25; break;
	case 2: _intensity = 10; break;
	case 1: _intensity = 5; break;
	case 0: _intensity = 2.5; break;
}

shader_set(sdr_Noise);
shader_set_uniform_f(_unif_intensity, _intensity);
shader_set_uniform_f(_unif_rand, random(100));

draw_surface(surf, 0, 0);
shader_reset();