#version 330

uniform float time;

in vec4 color;
out vec4 FragColor;

vec3 hsv2rgb(vec3 c)
{
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

vec4 Effect1()
{
    vec3 hsv = vec3(fract(time * 0.5), 1.0, 1.0);
    return vec4(hsv2rgb(hsv), 1.0);
}

vec4 Effect2()
{
    float t = time * 0.5;
    vec3 rainbow = vec3(t - floor(t), 1.0, 1.0 - t);
    vec3 c = hsv2rgb(rainbow);
    return vec4(c, 1.0);
}

void main()
{
    FragColor = Effect1();
    // FragColor = Effect2();
}