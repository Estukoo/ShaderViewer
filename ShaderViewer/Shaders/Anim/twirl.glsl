#version 330 core

uniform float time;
uniform vec2 resolution;

in vec2 aPos;
in vec4 vert_color;
out vec4 color;

void main()
{
    color = vert_color;
    vec2 center = resolution * 0.5;
    vec2 pos = aPos - center;
    float angle = atan(pos.y, pos.x) + time * 4.0;
    float radius = length(pos) * (0.5 + sin(time * 2.0) * 0.05);
    pos = vec2(cos(angle) * radius, sin(angle) * radius) + center;
    gl_Position = vec4(pos, 0.0, 1.0);
}