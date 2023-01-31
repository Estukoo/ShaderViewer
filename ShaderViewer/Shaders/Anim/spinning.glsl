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
    float r = time * (0.5 + 1 * 0.05);
    mat2 rot = mat2(cos(r), sin(r), -sin(r), cos(r));
    pos = rot * pos;
    gl_Position = vec4(pos + center, 0.0, 1.0);
}
