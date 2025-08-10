// Glow Effect Shader
// fragment_glow.glsl
precision mediump float;

uniform sampler2D u_texture;
uniform vec2 u_resolution;
uniform float u_glowRadius;
uniform vec3 u_glowColor;
uniform float u_glowIntensity;

varying vec2 v_texCoord;

void main() {
    vec4 color = texture2D(u_texture, v_texCoord);
    
    float glow = 0.0;
    for(float x = -u_glowRadius; x <= u_glowRadius; x++) {
        for(float y = -u_glowRadius; y <= u_glowRadius; y++) {
            vec2 offset = vec2(x, y) / u_resolution;
            vec4 sample = texture2D(u_texture, v_texCoord + offset);
            glow += sample.a * (1.0 - length(vec2(x, y)) / u_glowRadius);
        }
    }
    
    glow = clamp(glow * u_glowIntensity, 0.0, 1.0);
    vec3 glowEffect = u_glowColor * glow;
    
    gl_FragColor = vec4(color.rgb + glowEffect, max(color.a, glow));
}