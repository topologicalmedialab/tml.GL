// texcoords
varying vec2 texcoord0;		//Current texture
varying vec2 texcoord1;		//Previous velocity + texture

// samplers
uniform sampler2DRect tex0;
uniform sampler2DRect tex1;

// multipliers
uniform float alpha;

// entry point
void main()
{
	float s00 = texture2DRect(tex0, texcoord0 + vec2(-1,-1)).x;
	float s10 = texture2DRect(tex0, texcoord0 + vec2(0,-1)).x;
	float s20 = texture2DRect(tex0, texcoord0 + vec2(1,-1)).x;
	float s01 = texture2DRect(tex0, texcoord0 + vec2(-1,0)).x;
	float s11 = texture2DRect(tex0, texcoord0 + vec2(0,0)).x;
	float s21 = texture2DRect(tex0, texcoord0 + vec2(1,0)).x;
	float s02 = texture2DRect(tex0, texcoord0 + vec2(-1,1)).x;
	float s12 = texture2DRect(tex0, texcoord0 + vec2(0,1)).x;
	float s22 = texture2DRect(tex0, texcoord0 + vec2(1,1)).x;
	
	vec4 m00 = texture2DRect(tex1, texcoord1 + vec2(-1,-1));
	vec4 m10 = texture2DRect(tex1, texcoord1 + vec2(0,-1));
	vec4 m20 = texture2DRect(tex1, texcoord1 + vec2(1,-1));
	vec4 m01 = texture2DRect(tex1, texcoord1 + vec2(-1,0));
	vec4 m11 = texture2DRect(tex1, texcoord1 + vec2(0,0));
	vec4 m21 = texture2DRect(tex1, texcoord1 + vec2(1,0));
	vec4 m02 = texture2DRect(tex1, texcoord1 + vec2(-1,1));
	vec4 m12 = texture2DRect(tex1, texcoord1 + vec2(0,1));
	vec4 m22 = texture2DRect(tex1, texcoord1 + vec2(1,1));
	
	float t00 = m00.z;
	float t10 = m10.z;
	float t20 = m20.z;
	float t01 = m01.z;
	float t11 = m11.z;
	float t21 = m21.z;
	float t02 = m02.z;
	float t12 = m12.z;
	float t22 = m22.z;
	
	vec2 v00 = m00.xy;
	vec2 v10 = m10.xy;
	vec2 v20 = m20.xy;
	vec2 v01 = m01.xy;
	vec2 v11 = m11.xy;
	vec2 v21 = m21.xy;
	vec2 v02 = m02.xy;
	vec2 v12 = m12.xy;
	vec2 v22 = m22.xy;
	
	float Ex = 0.25*(s02 - s00 + s22 - s20 + t02 - t00 + t22 - t20);
	float Ey = 0.25*(s20 - s00 + s22 - s02 + t20 - t00 + t22 - t02);
	float Et = 0.25*(t00 - s00 + t20 - s20 + t02 - s02 + t22 - s22);
	
	//float Ex = 0.5*(s01 - s21);
	//float Ey = 0.5*(s10 - s12);
	//float Et = 0.5*(t11 - s11);
	
	vec2 laplace = (1.0/6.0)*(v10 + v01 + v12 + v21)
					+ (1.0/12.0)*(v00 + v02 + v20 + v22);
	
	 float d = (Ex*laplace.x + Ey*laplace.y +Et)/(alpha + Ex*Ex + Ey*Ey);
	float mx = laplace.x - Ex *d;
	float my = laplace.y - Ey * d;
	
	vec4 outC = vec4(mx, my, s11, t11);
	if (outC.x != outC.x)	outC.x = 0.0;
	if (outC.y != outC.y)	outC.y = 0.0;
	if (outC.z != outC.z)	outC.z = 0.0;
	if (outC.w != outC.w)	outC.w = 0.0;
	
	gl_FragColor = clamp(outC, -1000.1, 1000.1);
}

