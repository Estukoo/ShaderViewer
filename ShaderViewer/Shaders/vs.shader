#version 330

in vec2 aPos;
in vec4 aVertColor;
in vec2 aTexCoord;

out vec4 color;
out vec2 texCoord;

uniform vec2 scale;
uniform float rotation;

void main() {
    float r = rotation * (0.5 + gl_InstanceID * 0.05);
    mat2 rot = mat2(cos(r), sin(r), -sin(r), cos(r));

    color = aVertColor;
    texCoord = aTexCoord;
    
    gl_Position = vec4((rot * aPos) * scale, 0.0, 1.0);
}