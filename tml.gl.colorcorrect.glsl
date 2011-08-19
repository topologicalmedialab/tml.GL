// texcoords
varying vec2 texcoord0;

// samplers
uniform sampler2DRect tex0;

//Distance (allowable)
uniform float distance;

//Source and target colors
uniform vec4 srcColor;
uniform vec4 dstColor;

// entry point
void main()
{
	vec4 src = texture2DRect(tex0, texcoord0);
	
	vec4 cc = src - srcColor;
	
	float cd = sqrt(cc.x + cc.y + cc.z + cc.w) / distance;
	
	if (cd > 1.0) cd = 1.0;
	
	gl_FragColor = dstColor * (1.0-cd) + src * cd;
}

