// texcoords
varying vec2 texcoord0;

// samplers
uniform sampler2DRect tex0;

// amount to shift values by
uniform vec4 offset;

// entry point
void main()
{	
	vec4 dat = texture2DRect(tex0, texcoord0)*offset;
	/**/float val = dat.x*offset.x + dat.y*offset.y + dat.z*offset.z + dat.w*offset.w;
	gl_FragColor = vec4(val,val,val,val);
}

