#version 430

out vec4 FragColor;
uniform float time;

void main()
{
    vec2 position = gl_FragCoord.xy / vec2(640.0, 480.0);
    float random = fract(sin(dot(position + vec2(time), vec2(12.9898, 78.233))) * 43758.5453);
    vec3 color = vec3(random, random, random);
    FragColor = vec4(color, 1.0);
}
