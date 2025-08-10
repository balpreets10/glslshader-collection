// Film Grain Shader
// fragment_film_grain.glsl
precision mediump float;

uniform sampler2D u_texture;
uniform float u_time;
uniform float u_grainAmount;

varying vec2 v_texCoord;

float random(vec2 co) {
    return fract(sin(dot(co.xy, vec2(12.9898, 78.233))) * 43758.5453);
}

void main() {
    vec4 color = texture2D(u_texture, v_texCoord);
    
    float grain = random(v_texCoord + u_time) * 2.0 - 1.0;
    grain *= u_grainAmount;
    
    color.rgb += grain;
    
    gl_FragColor = color;
}