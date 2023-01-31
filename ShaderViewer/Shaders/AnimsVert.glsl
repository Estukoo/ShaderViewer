#version 330 core

uniform float time;
uniform vec2 scale;

in vec2 aPos;
in vec4 aVertColor;
in vec2 aTexCoord;

out vec4 color;
out vec2 texCoord;

// Utils
vec2 wave(vec2 v, float a, float s)
{
    return vec2(v.x + sin(v.y * a + time * s), v.y);
}

// Effects
vec4 ZoomSpin()
{
    float r = time * (0.5 + 1 * 0.05);
    mat2 rot = mat2(cos(r), sin(r), -sin(r), cos(r));
    float zoom = (sin(time * 4.0) + 1.0) * 0.5;
    vec2 rotated = rot * aPos * zoom;
    float z = sin(time * 2.0) * 0.5 + 0.5;
    return vec4(rotated, z, 1.0);
}


vec4 ZoomSpinExplode()
{
    float r = time * (0.5 + 1 * 0.05);
    mat2 rot = mat2(cos(r), sin(r), -sin(r), cos(r));
    vec2 offset = vec2(sin(time * 10.0), cos(time * 8.0)) * 0.25;
    vec2 rotated = (rot * aPos + offset) * (1.0 + sin(time * 3.0) * 0.5);
    float z = sin(time * 5.0) * 0.5 + 0.5;
    return vec4(rotated, z, 1.0);
}

vec4 ZoomSpinMad()
{
    vec2 offset = vec2(sin(time * 20.0), cos(time * 15.0)) * 0.1;
    vec2 distort = vec2(sin(time * 50.0), cos(time * 35.0)) * 0.05;
    vec2 rotated = (aPos + offset) * (1.0 + sin(time * 5.0) * 0.5) + distort;
    float z = sin(time * 10.0) * 0.5 + 0.5;
    return vec4(rotated, z, 1.0);
}

vec4 CaGlisse()
{
    vec2 waved = wave(aPos, 10.0, 2.0);
    return vec4(waved, 0.0, 1.0);
}

vec4 Elastic()
{
    float x = aPos.x + sin(time + aPos.y * 10.0) * 0.1;
    float y = aPos.y + sin(time + aPos.x * 10.0) * 0.1;
    return vec4(x, y, 0.0, 1.0);
}

vec4 Jiggle()
{
    vec2 pos = aPos + vec2(sin(aPos.x * 10.0 + time * 5.0), cos(aPos.y * 10.0 + time * 5.0)) * 0.1;
    return vec4(pos, 0.0, 1.0);
}

vec4 Spin()
{
    float r = time * (0.5 + gl_InstanceID * 0.05);
    mat2 rot = mat2(cos(r), sin(r), -sin(r), cos(r));
    return vec4((rot * aPos) * scale, 0.0, 1.0);
}

vec4 Pulse()
{
    float pulse = sin(time * 2.0) * 0.5 + 0.5;
    vec2 pulsePos = aPos * pulse;
    return vec4(pulsePos, 0.0, 1.0);
}

vec4 Bounce()
{
    float bounce = tan(time * 2.5)  * 1.5 + 0.5;
    vec2 boucePos = aPos * bounce;
    return vec4(boucePos, 0.0, 1.0);
}

void main()
{
    color = aVertColor;
    texCoord = aTexCoord;

    gl_Position = ZoomSpin();
    gl_Position += Spin();
    gl_Position += Jiggle();
    gl_Position += Elastic();
    gl_Position += CaGlisse();
    gl_Position += ZoomSpinExplode();
    gl_Position += Bounce();
    gl_Position += ZoomSpinMad();
    gl_Position += Pulse();
}