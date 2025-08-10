// Animated Vertex Shader - Wave distortion
// vertex_wave.glsl
attribute vec3 a_position;
attribute vec2 a_texCoord;

uniform mat4 u_modelViewProjection;
uniform float u_time;
uniform float u_amplitude;
uniform float u_frequency;

varying vec2 v_texCoord;

void main() {
    vec3 pos = a_position;
    
    // Create wave effect
    pos.y += sin(pos.x * u_frequency + u_time) * u_amplitude;
    pos.z += cos(pos.x * u_frequency * 0.5 + u_time * 0.7) * u_amplitude * 0.5;
    
    v_texCoord = a_texCoord;
    gl_Position = u_modelViewProjection * vec4(pos, 1.0);
}