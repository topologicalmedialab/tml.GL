// texcoords
varying vec2 texcoord0;
varying vec2 texcoord1;

// samplers
uniform sampler2DRect tex0;
uniform sampler2DRect tex1;


// entry point
void main()
{
	vec4 outColor = vec4(0.0,0.0,0.0,0.0);
	
	vec4 t1 = texture2DRect(tex0, texcoord0);
	vec4 t2 = texture2DRect(tex1, texcoord1);
	
	if (t1.x > t2.x)	outColor.x = 1.0;
	if (t1.y > t2.y)	outColor.y = 1.0;
	if (t1.z > t2.z)	outColor.z = 1.0;
	if (t1.w > t2.w)	outColor.w = 1.0;
	
	gl_FragColor = outColor;
}

