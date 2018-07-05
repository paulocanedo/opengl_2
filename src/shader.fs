#version 330 core
out vec4 FragColor;
in vec2 texCoord;
in vec3 ourColor;

uniform sampler2D ourTexture1;
uniform sampler2D ourTexture2;

void main()
{
	vec4 fragTex1 = texture(ourTexture1, texCoord);
	vec4 fragTex2 = texture(ourTexture2, texCoord);

	FragColor = mix(vec4(fragTex1.rgb, 1.0), vec4(fragTex2.rgb, 1.0), 0.8);
	//FragColor = fragTex2;
}
