// Distortion Shader
// fragment_distortion.glsl
precision mediump float;

uniform sampler2D u_texture;
uniform float u_time;
uniform float u_distortionStrength;

varying vec2 v_texCoord;

void main() {
    vec2 uv = v_texCoord;
    
    // Create distortion
    float distortion1 = sin(uv.y * 20.0 + u_time * 2.0) * u_distortionStrength;
    float distortion2 = cos(uv.x * 15.0 + u_time * 1.5) * u_distortionStrength;
    
    uv.x += distortion1;
    uv.y += distortion2;
    
    gl_FragColor = texture2D(u_texture, uv);
}