// texcoords
varying vec2 texcoord0;

// samplers
uniform sampler2DRect tex0;

uniform float blur;

// entry point
void main()
{
	vec4 center = texture2DRect(tex0, texcoord0);
	vec4 outside = 	texture2DRect(tex0, texcoord0 + vec2(1.0,0.0))
				+	texture2DRect(tex0, texcoord0 + vec2(-1.0,0.0))
				+	texture2DRect(tex0, texcoord0 + vec2(0.0,1.0))
				+	texture2DRect(tex0, texcoord0 + vec2(0.0,-1.0));
	
	outside = outside *blur*0.25 + center * (1.0-blur);
	
	gl_FragColor = outside;
}

