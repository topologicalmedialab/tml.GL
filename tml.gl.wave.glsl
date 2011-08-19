// texcoords
varying vec2 texcoord0;
varying vec2 texcoord1;
varying vec2 texcoord2;

// samplers
uniform sampler2DRect tex0;
uniform sampler2DRect tex1;
uniform sampler2DRect tex2;

uniform float dt;
uniform float diffusion;

// entry point
void main()
{
	//Inputs...
	vec4 newDens = texture2DRect(tex0, texcoord0);
	vec4 timen1 = texture2DRect(tex1, texcoord1);
	vec4 timen2 = texture2DRect(tex2, texcoord2);
	
	vec4 timen1L = texture2DRect(tex1, texcoord1 - vec2(1,0));
	vec4 timen1R = texture2DRect(tex1, texcoord1 + vec2(1,0));
	vec4 timen1U = texture2DRect(tex1, texcoord1 - vec2(0,1));
	vec4 timen1D = texture2DRect(tex1, texcoord1 + vec2(0,1));
		
	vec4 right = dt * (timen1L + timen1R + timen1U + timen1D)
					+ timen1 * (2.0-4.0*dt)
					- timen2;
	
	
	right = right - right * diffusion;
	right += newDens;

	//Ensure sanity...
	if (right.x != right.x)	right.x = 0.5;
	if (right.y != right.y)	right.y = 0.5;
	if (right.z != right.z)	right.z = 0.5;
	if (right.w != right.w)	right.w = 0.5;
	
	gl_FragColor = clamp(right, -100.0, 100.0);
}

