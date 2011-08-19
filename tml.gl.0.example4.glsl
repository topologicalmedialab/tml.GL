varying vec2 texcoord0;
uniform sampler2DRect tex0;
void main() {
vec4 v1 = texture2DRect(tex0, vec2(texcoord0.x + -1.0,texcoord0.y + 0.0));
vec4 v2 = texture2DRect(tex0, vec2(texcoord0.x + 1.0,texcoord0.y + 0.0));
float v3 = v1.x - v2.x;
gl_FragColor.x = v3;
vec4 v4 = texture2DRect(tex0, vec2(texcoord0.x + 0.0,texcoord0.y + -1.0));
vec4 v5 = texture2DRect(tex0, vec2(texcoord0.x + 0.0,texcoord0.y + 1.0));
float v6 = v4.y - v5.y;
gl_FragColor.y = v6;
float v7 = v1.x - v2.x;
gl_FragColor.z = v7;
float v8 = v1.x - v2.x;
gl_FragColor.w = v8;
} 