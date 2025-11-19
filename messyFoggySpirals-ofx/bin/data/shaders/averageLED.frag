#version 410

uniform sampler2DRect sourceTex;

uniform ivec2 regionPos[648];
uniform ivec2 regionSize;

out vec4 color;

void main() {
    int index = int(gl_FragCoord.x);
    
    ivec2 pos = regionPos[index];
    ivec2 size = regionSize;
    
    vec3 sum = vec3(0.0);
    
    for (int y = 0; y < size.y; y++) {
        for (int x = 0; x < size.x; x++) {
            sum += texelFetch(sourceTex, pos + ivec2(x,y)).rgb;
        }
    }
    
    float num = float(size.x * size.y);
    color = vec4(sum / num, 1.0);
}

