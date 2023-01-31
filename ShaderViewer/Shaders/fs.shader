#version 330
out vec4 FragColor;

uniform sampler2D tex;

in vec4 color;
in vec2 texCoord;

void main() {
    FragColor = texture(tex, texCoord) + color;
}