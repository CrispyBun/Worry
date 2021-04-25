//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;

uniform float rand_seed;
uniform float intensity;

float rand( vec2 p)
{
    return fract( cos( dot( p, vec2(5.237,6.378)))*(8463.648 + rand_seed));
}

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	gl_FragColor += vec4(vec3(rand(v_vPosition)), 0.2)/intensity;
}
