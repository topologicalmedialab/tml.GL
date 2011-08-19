// texcoords
varying vec2 texcoord0;

// samplers
uniform sampler2DRect tex0;


// entry point
void main()
{	
	gl_FragColor = abs(texture2DRect(tex0, texcoord0));
}

