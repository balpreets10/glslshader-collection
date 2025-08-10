// Gradient Shader - Smooth color transitions
// fragment_gradient.glsl
precision mediump float;

uniform vec3 u_colorTop;
uniform vec3 u_colorBottom;
uniform float u_gradientPower;

varying vec2 v_texCoord;

void main() {
    float gradient = pow(v_texCoord.y, u_gradientPower);
    vec3 color = mix(u_colorBottom, u_colorTop, gradient);
    gl_FragColor = vec4(color, 1.0);
}