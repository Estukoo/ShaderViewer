#version 330 core

uniform float time;
uniform vec2 center;

in vec2 aPos;
in vec4 vert_color;
out vec4 color;

void main()
{
    color = vert_color;
    vec2 pos = aPos - center;
    float dist = length(pos);
    pos *= 1.0 + sin(dist * 5.0 - time * 2.0) * 0.1;
    gl_Position = vec4(pos + center, 0.0, 1.0);
}
