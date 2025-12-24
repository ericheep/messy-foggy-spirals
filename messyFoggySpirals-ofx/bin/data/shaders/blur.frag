/*
 #version 410

uniform sampler2DRect tex0;

uniform float u_blurMix = 1.0;
uniform float u_blurQuality = 9.0;
uniform float u_blurAngles = 24.0;
uniform float u_blurRadius = 18.0;
uniform float u_blurRadiusScalar = 1.0;

// spectral controls
uniform float u_spectrumAmount = 0.3;  // try 0.05 – 0.3
uniform float u_spectrumPower  = 1.5;   // falloff shaping

uniform float u_alpha = 1.0;

in vec2 texCoordVarying;
out vec4 outputColor;

float saturate(float x) {
    return clamp(x, 0.0, 1.0);
}

// RGB → HSV
vec3 rgb2hsv(vec3 c) {
    vec4 K = vec4(0.0, -1.0/3.0, 2.0/3.0, -1.0);
    vec4 p = mix(vec4(c.bg, K.wz),
                 vec4(c.gb, K.xy),
                 step(c.b, c.g));
    vec4 q = mix(vec4(p.xyw, c.r),
                 vec4(c.r, p.yzx),
                 step(p.x, c.r));

    float d = q.x - min(q.w, q.y);
    float e = 1.0e-10;
    return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)),
                d / (q.x + e),
                q.x);
}

// HSV → RGB
vec3 hsv2rgb(vec3 c) {
    vec4 K = vec4(1.0, 2.0/3.0, 1.0/3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

void main() {

    float two_pi = 6.28318530718;

    vec4 baseColor = texture(tex0, texCoordVarying);

    vec3 blurColor = vec3(0.0);
    float sampleCount = 0.0;

    for (float theta = 0.0; theta < two_pi; theta += two_pi / u_blurAngles) {

        vec2 dir = vec2(cos(theta), sin(theta));

        for (float i = 1.0 / u_blurQuality; i <= 1.0; i += 1.0 / u_blurQuality) {

            vec2 offset = dir * u_blurRadius * i * u_blurRadiusScalar;

            vec3 col = texture(tex0, texCoordVarying + offset).rgb;

            // radius-based spectral shift
            float t = pow(i, u_spectrumPower);
            float hueShift = t * u_spectrumAmount;

            vec3 hsv = rgb2hsv(col);
            hsv.x = fract(hsv.x + hueShift);
            hsv.y = saturate(hsv.y + t * 0.15); // boost saturation slightly

            blurColor += hsv2rgb(hsv);
            sampleCount += 1.0;
        }
    }

    blurColor /= sampleCount;

    vec3 finalRGB = mix(baseColor.rgb, blurColor, u_blurMix);
    outputColor = vec4(finalRGB, baseColor.a * u_alpha);
}

*/

 #version 410

// bloom
// fragment shader

// adapted for ofx from existical's "gaussian blur simple and fast"
// https://www.shadertoy.com/view/Xltfzj

uniform sampler2DRect tex0;
uniform float u_blurMix = 0.0;
uniform float u_blurQuality = 9.0;
uniform float u_blurAngles = 24.0;
uniform float u_blurRadius = 16.0;
uniform float u_blurRadiusScalar = 1.0;
uniform float u_alpha = 1.0;

in vec2 texCoordVarying;
out vec4 outputColor;

void main() {
    float two_pi = 6.28318530718;
            
    // pixel color
    vec4 color = texture(tex0, texCoordVarying);
    
    // blur calculations
    for( float theta = 0.0; theta < two_pi; theta += two_pi / u_blurAngles) {
        for(float i = 1.0 / u_blurQuality; i <= 1.0; i+= 1.0 / u_blurQuality) {
            color += texture(tex0, texCoordVarying + vec2(cos(theta), sin(theta)) * u_blurRadius * i * u_blurRadiusScalar);
        }
    }
    
    color /= u_blurQuality * u_blurAngles;
    color = mix(texture(tex0, texCoordVarying), color, u_blurMix);
    
    outputColor = vec4(color.rgb, color.a * u_alpha);
}

