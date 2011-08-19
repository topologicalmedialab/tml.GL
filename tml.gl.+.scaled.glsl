// texcoords
varying vec2 texcoord0;
varying vec2 texcoord1;

// samplers
uniform sampler2DRect tex0;
uniform sampler2DRect tex1;

uniform vec4 scaleA;
uniform vec4 scaleB;

// entry point
void main()
{
	gl_FragColor = texture2DRect(tex0, texcoord0) * scaleA
					+ texture2DRect(tex1, texcoord1) * scaleB;
}

