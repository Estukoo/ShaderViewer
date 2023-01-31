#version 330
out vec4 FragColor;

uniform sampler2D tex;

in vec4 frag_color;
in vec2 tex_coord;

void main() {
    FragColor = texture(tex, tex_coord) * frag_color;
    // FragColor = frag_color;
}