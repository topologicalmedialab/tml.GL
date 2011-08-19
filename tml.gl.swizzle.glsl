// texcoords
varying vec2 texcoord0;

// samplers
uniform sampler2DRect tex0;

// multipliers used to determine swizzle (each is dotted)
uniform vec4 mulX;
uniform vec4 mulY;
uniform vec4 mulZ;
uniform vec4 mulW;

// entry point
void main()
{	
	vec4 c = texture2DRect(tex0, texcoord0);
	vec4 outColor;
	
	outColor.x = mulX.x*c.x + mulX.y*c.y + mulX.z*c.z + mulX.w*c.w;
	outColor.y = mulY.x*c.x + mulY.y*c.y + mulY.z*c.z + mulY.w*c.w;
	outColor.z = mulZ.x*c.x + mulZ.y*c.y + mulZ.z*c.z + mulZ.w*c.w;
	outColor.w = mulW.x*c.x + mulW.y*c.y + mulW.z*c.z + mulW.w*c.w;
	
	gl_FragColor = outColor;
}

