// texcoords
varying vec2 texcoord0;

// samplers
uniform sampler2DRect tex0;

uniform vec4 value;

// entry point
void main()
{	
	gl_FragColor = value - texture2DRect(tex0, texcoord0);
}

