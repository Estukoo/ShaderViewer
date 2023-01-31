#version 330 core

uniform float time;
uniform vec3 axis;

in vec2 aPos;
in vec4 aVertColor;
in vec2 aTexCoord;

out vec4 color;
out vec2 texCoord;

void main()
{
    color = aVertColor;
    texCoord = aTexCoord;
    vec3 pos = vec3(aPos, 0.0);
    pos += axis * sin(length(pos) + time);
    gl_Position = vec4(pos, 1.0);
}
