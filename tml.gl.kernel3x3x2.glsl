// texcoords
varying vec2 texcoord0;		//Current texture
varying vec2 texcoord1;		//Feedback

// samplers
uniform sampler2DRect tex0;
uniform sampler2DRect tex1;

// multipliers
uniform float m0;
uniform float m1;
uniform float m2;
uniform float m3;
uniform float m4;
uniform float m5;
uniform float m6;
uniform float m7;
uniform float m8;

uniform float n0;
uniform float n1;
uniform float n2;
uniform float n3;
uniform float n4;
uniform float n5;
uniform float n6;
uniform float n7;
uniform float n8;

// entry point
void main()
{
	vec4 s0 = texture2DRect(tex0, texcoord0 + vec2(-1,-1))*m0;
	vec4 s1 = texture2DRect(tex0, texcoord0 + vec2(0,-1))*m1;
	vec4 s2 = texture2DRect(tex0, texcoord0 + vec2(1,-1))*m2;
	s0 += texture2DRect(tex0, texcoord0 + vec2(-1,0))*m3;
	s1 += texture2DRect(tex0, texcoord0 + vec2(0,0))*m4;
	s2 += texture2DRect(tex0, texcoord0 + vec2(1,0))*m5;
	s0 += texture2DRect(tex0, texcoord0 + vec2(-1,1))*m6;
	s1 += texture2DRect(tex0, texcoord0 + vec2(0,1))*m7;
	s2 += texture2DRect(tex0, texcoord0 + vec2(1,1))*m8;
	
	s0 += texture2DRect(tex1, texcoord1 + vec2(-1,-1))*n0;
	s1 += texture2DRect(tex1, texcoord1 + vec2(0,-1))*n1;
	s2 += texture2DRect(tex1, texcoord1 + vec2(1,-1))*n2;
	s0 += texture2DRect(tex1, texcoord1 + vec2(-1,0))*n3;
	s1 += texture2DRect(tex1, texcoord1 + vec2(0,0))*n4;
	s2 += texture2DRect(tex1, texcoord1 + vec2(1,0))*n5;
	s0 += texture2DRect(tex1, texcoord1 + vec2(-1,1))*n6;
	s1 += texture2DRect(tex1, texcoord1 + vec2(0,1))*n7;
	s2 += texture2DRect(tex1, texcoord1 + vec2(1,1))*n8;

	vec4 right = s0 + s1 + s2;

	if (right.x != right.x)	right.x = 0.0;
	if (right.y != right.y)	right.y = 0.0;
	if (right.z != right.z)	right.z = 0.0;
	if (right.w != right.w)	right.w = 0.0;

	gl_FragColor = clamp(right, -1000.1, 1000.1);
}

