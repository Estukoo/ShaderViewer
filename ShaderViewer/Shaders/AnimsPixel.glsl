#version 330
out vec4 FragColor;

uniform float time;
uniform sampler2D tex;

in vec4 color;
in vec2 texCoord;

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

void main() {
    FragColor = texture(tex, texCoord) + color;
    //FragColor = color;
    FragColor = Effect1() + texture(tex, texCoord);
}