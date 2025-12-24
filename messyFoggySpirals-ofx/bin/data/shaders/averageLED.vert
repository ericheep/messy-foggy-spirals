#version 150

in vec4 position;
in vec4 color;
in vec4 normal;
in vec2 texcoord;

void main() {
    gl_Position = position;
}
