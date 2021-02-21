varying mediump vec4 position;
varying mediump vec2 var_texcoord0;

uniform lowp sampler2D texture_sampler;
uniform lowp vec4 tint;

uniform lowp sampler2D original

void main()
{
	vec4 color = texture2D(original, var_texcoord0.xy);
	float grey = color.x * 0.3 + color.y * 0.59 + color.z * 0.11 ;
	
	gl_FragColor = vec4(grey, grey, grey, 1.0)
}
