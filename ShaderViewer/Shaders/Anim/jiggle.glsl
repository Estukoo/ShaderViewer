#version 330 core

uniform float time;

in vec2 aPos;
in vec4 aVertColor;
in vec2 aTexCoord;

out vec4 color;
out vec2 texCoord;

void main()
{
    color = aVertColor;
    texCoord = aTexCoord;
    vec2 pos = aPos + vec2(sin(aPos.x * 10.0 + time * 5.0), cos(aPos.y * 10.0 + time * 5.0)) * 0.1;
    gl_Position = vec4(pos, 0.0, 1.0);
}
