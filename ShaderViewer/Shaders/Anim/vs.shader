#version 330 core

uniform float time;

in vec2 aPos;
in vec4 vert_color;
out vec4 color;

// Utils
vec2 rotate(vec2 v, float a)
{
    return vec2(v.x * cos(a) - v.y * sin(a), v.x * sin(a) + v.y * cos(a));
}

vec2 swirl(vec2 v, float a, float s)
{
    float r = length(v);
    float theta = atan(v.y, v.x) + r * a;
    return vec2(r * cos(theta), r * sin(theta)) * s;
}

vec2 pulse(vec2 v, float a, float s)
{
    float r = length(v);
    return v * (sin(r * a + time * s) + 1.0) * 0.5;
}

vec2 waves(vec2 v, float a, float s)
{
    return vec2(v.x + sin(v.y * a + time * s), v.y + sin(v.x * a + time * s));
}

vec2 wave(vec2 v, float a, float s)
{
    return vec2(v.x + sin(v.y * a + time * s), v.y);
}


// Effects
vec4 Effect1()
{
    float r = time * (0.5 + 1 * 0.05);
    mat2 rot = mat2(cos(r), sin(r), -sin(r), cos(r));
    float zoom = (sin(time * 4.0) + 1.0) * 0.5;
    vec2 rotated = rot * aPos * zoom;
    float z = sin(time * 2.0) * 0.5 + 0.5;
    return vec4(rotated, z, 1.0);
}


vec4 Effect2()
{
    float r = time * (0.5 + 1 * 0.05);
    mat2 rot = mat2(cos(r), sin(r), -sin(r), cos(r));
    vec2 offset = vec2(sin(time * 10.0), cos(time * 8.0)) * 0.25;
    vec2 rotated = (rot * aPos + offset) * (1.0 + sin(time * 3.0) * 0.5);
    float z = sin(time * 5.0) * 0.5 + 0.5;
    return vec4(rotated, z, 1.0);
}

vec4 Effect3()
{
    vec2 offset = vec2(sin(time * 20.0), cos(time * 15.0)) * 0.1;
    vec2 distort = vec2(sin(time * 50.0), cos(time * 35.0)) * 0.05;
    vec2 rotated = (aPos + offset) * (1.0 + sin(time * 5.0) * 0.5) + distort;
    float z = sin(time * 10.0) * 0.5 + 0.5;
    return vec4(rotated, z, 1.0);
}

vec4 Effect4()
{
    vec2 waved = wave(aPos, 10.0, 2.0);
    return vec4(waved, 0.0, 1.0);
}

void main()
{
    color = vert_color;

    gl_Position = Effect3();
    gl_Position = Effect1();
    gl_Position = Effect2();
    gl_Position = Effect4();
}