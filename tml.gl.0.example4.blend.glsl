varying vec2 texcoord1;
uniform sampler2DRect tex1;
uniform	float user_scale;
varying vec2 texcoord0;
uniform sampler2DRect tex0;
void main() {
vec4 v1 = texture2DRect(tex0, texcoord0 + vec2(0.0,0.0));
float v2 = v1.x * user_scale;
vec4 v3 = texture2DRect(tex1, texcoord1 + vec2(0.0,0.0));
float v4 = 1.0 - user_scale;
float v5 = v3.x * v4;
float v6 = v2 + v5;
gl_FragColor.x = v6;
float v7 = v1.y * user_scale;
float v8 = 1.0 - user_scale;
float v9 = v3.y * v8;
float v10 = v7 + v9;
gl_FragColor.y = v10;
float v11 = v1.z * user_scale;
float v12 = 1.0 - user_scale;
float v13 = v3.z * v12;
float v14 = v11 + v13;
gl_FragColor.z = v14;
float v15 = v1.w * user_scale;
float v16 = 1.0 - user_scale;
float v17 = v3.w * v16;
float v18 = v15 + v17;
gl_FragColor.w = v18;
} 