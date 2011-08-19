// texcoords
varying vec2 texcoord0;
varying vec2 texcoord1;

// samplers
uniform sampler2DRect tex0;
uniform sampler2D tex1;

// entry point
void main()
{
	gl_FragColor.r = texture2D(tex1, vec2(texture2DRect(tex0, texcoord0).r,0.5)).r;
	gl_FragColor.g = texture2D(tex1, vec2(texture2DRect(tex0, texcoord0).g,0.5)).g;
	gl_FragColor.b = texture2D(tex1, vec2(texture2DRect(tex0, texcoord0).b,0.5)).b;
	gl_FragColor.a = texture2D(tex1, vec2(texture2DRect(tex0, texcoord0).a,0.5)).a;
}

