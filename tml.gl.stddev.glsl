// texcoords
varying vec2 texcoord0;		//Source
varying vec2 texcoord1;		//Mean
varying vec2 texcoord2;		//Old Standard Deviation

// samplers
uniform sampler2DRect tex0;
uniform sampler2DRect tex1;
uniform sampler2DRect tex2;

uniform vec4 scaleA;		//Interpolation values
uniform vec4 scaleB;

// entry point
void main()
{
	vec4 src = texture2DRect(tex0, texcoord0);
	vec4 mean = texture2DRect(tex1, texcoord1);
	vec4 stddev = texture2DRect(tex2, texcoord2);
	
	src = src - mean;
	src = src * src;
	
	src = src*scaleA + stddev*stddev * scaleB;
	gl_FragColor = sqrt(src);
}

