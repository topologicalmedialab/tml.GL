// texcoords
varying vec2 texcoord0;

// samplers
uniform sampler2DRect tex0;

// entry point
void main()
{      
	vec4 left = texture2DRect(tex0, texcoord0 - vec2(1,0));
	vec4 right = texture2DRect(tex0, texcoord0 + vec2(1,0));
	
	vec4 up = texture2DRect(tex0, texcoord0 - vec2(0,1));
	vec4 down = texture2DRect(tex0, texcoord0 + vec2(0,1));
	
	gl_FragColor = left-right+up-down;
}

