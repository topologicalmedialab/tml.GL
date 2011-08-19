// texcoords
varying vec2 texcoord0;

// samplers
uniform sampler2DRect tex0;

// amount to shift values by
uniform vec4 offset;

// entry point
void main()
{	
	gl_FragColor = texture2DRect(tex0, texcoord0)+offset;
}

