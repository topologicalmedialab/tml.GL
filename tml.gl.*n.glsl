// texcoords
varying vec2 texcoord0;

// samplers
uniform sampler2DRect tex0;

// amount to shift values by
uniform vec4 offset;

// entry point
void main()
{
	vec4 td = texture2DRect(tex0, texcoord0);
	td.x = td.x*offset.x;
	td.y = td.y*offset.y;
	td.z = td.z*offset.z;
	td.w = td.w*offset.w;
	gl_FragColor = td;
}

