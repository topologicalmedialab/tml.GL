// texcoords
varying vec2 texcoord0;
varying vec2 texcoord1;

// samplers
uniform sampler2DRect tex0;
uniform sampler2DRect tex1;

// timestep that we'll use
uniform float timestep;

// entry point
void main()
{
	//Read in the current velocity...
	vec4 velocity = texture2DRect(tex1, texcoord1);
	
	vec2 velxy = velocity.xy * timestep;
	
	gl_FragColor = texture2DRect(tex0, texcoord0-velxy);
}

