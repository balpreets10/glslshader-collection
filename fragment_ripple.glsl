// Ripple Effect Shader
// fragment_ripple.glsl
precision mediump float;

uniform float u_time;
uniform vec2 u_center;
uniform float u_amplitude;
uniform float u_frequency;
uniform sampler2D u_texture;

varying vec2 v_texCoord;

void main() {
    vec2 center = u_center;
    float distance = length(v_texCoord - center);
    
    float ripple = sin(distance * u_frequency - u_time * 3.0) * u_amplitude / (distance + 1.0);
    
    vec2 offset = normalize(v_texCoord - center) * ripple;
    vec2 newCoord = v_texCoord + offset;
    
    gl_FragColor = texture2D(u_texture, newCoord);
}