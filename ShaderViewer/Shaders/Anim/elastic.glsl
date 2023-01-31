#version 330 core

uniform float time;

in vec2 aPos;
in vec4 vert_color;
out vec4 color;

void main()
{
    color = vert_color;
    float x = aPos.x + sin(time + aPos.y * 10.0) * 0.1;
    float y = aPos.y + sin(time + aPos.x * 10.0) * 0.1;
    gl_Position = vec4(x, y, 0.0, 1.0);
}