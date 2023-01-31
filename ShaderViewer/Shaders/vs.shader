#version 330

in vec2 vert;
in vec4 vert_color;
in vec2 vertexTexCoord;

out vec4 frag_color;
out vec2 tex_coord;

uniform vec2 scale;
uniform float rotation;

void main() {
    float r = rotation * (0.5 + gl_InstanceID * 0.05);
    mat2 rot = mat2(cos(r), sin(r), -sin(r), cos(r));

    gl_Position = vec4((rot * vert) * scale, 0.0, 1.0);

    frag_color = vert_color;
    tex_coord = vertexTexCoord;
}