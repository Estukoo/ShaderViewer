#version 430

layout(location = 0) in vec3 aPos;
uniform float time;

void main()
{
    float rad = time;
    // vec4 rotatedPos = vec4(cos(rad) * aPos.x - sin(rad) * aPos.z, aPos.y, sin(rad) * aPos.x + cos(rad) * aPos.z, 1.0);
    vec4 rotatedPos = vec4(
        cos(rad) * aPos.x + sin(rad) * aPos.z, 
        cos(rad) * aPos.y - sin(rad) * aPos.x, 
        sin(rad) * aPos.y + cos(rad) * aPos.z, 
        1.0
    );    gl_Position = vec4(rotatedPos.x, rotatedPos.y, rotatedPos.z, 1.0);
}
