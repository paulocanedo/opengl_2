#version 330 core
layout (location = 0) in vec3 aPos;   // the position variable has attribute position 0
layout (location = 1) in vec2 aTex;
layout (location = 2) in vec3 aColor; // the color variable has attribute position 1

out vec3 ourColor; // output a color to the fragment shader
out vec2 texCoord;

uniform mat4 trans;

void main()
{
    gl_Position = trans * vec4(aPos, 1.0);
    texCoord = vec2(aTex.s, 1.0 - aTex.t); //gato pra inverter o eixo Y q fizemos errado o mapeamento da texCoord
    ourColor = aColor; // set ourColor to the input color we got from the vertex data
}
