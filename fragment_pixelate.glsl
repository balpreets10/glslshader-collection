// Pixelation Effect Shader
// fragment_pixelate.glsl
precision mediump float;

uniform sampler2D u_texture;
uniform vec2 u_resolution;
uniform float u_pixelSize;

varying vec2 v_texCoord;

void main() {
    vec2 coord = v_texCoord * u_resolution;
    coord = floor(coord / u_pixelSize) * u_pixelSize;
    coord /= u_resolution;
    
    gl_FragColor = texture2D(u_texture, coord);
}