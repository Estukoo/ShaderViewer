#version 330 core

uniform float time;
uniform vec3 axis;

in vec2 aPos;
in vec4 vert_color;
out vec4 color;

void main()
{
    color = vert_color;
    vec3 pos = vec3(aPos, 0.0);
    pos += axis * sin(length(pos) + time);
    gl_Position = vec4(pos, 1.0);
}
