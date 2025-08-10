// Plasma Effect Shader
// fragment_plasma.glsl
precision mediump float;

uniform float u_time;
uniform vec2 u_resolution;

varying vec2 v_texCoord;

void main() {
    vec2 uv = v_texCoord;
    
    float v = 0.0;
    vec2 c = uv * u_resolution - u_resolution * 0.5;
    
    v += sin((c.x + u_time));
    v += sin((c.y + u_time) / 2.0);
    v += sin((c.x + c.y + u_time) / 2.0);
    
    c += u_resolution * 0.5 * vec2(sin(u_time / 3.0), cos(u_time / 2.0));
    v += sin(sqrt(c.x * c.x + c.y * c.y + 1.0) + u_time);
    
    v = v / 2.0;
    
    vec3 col = vec3(sin(v * 3.14159), sin(v * 3.14159 + 2.0), sin(v * 3.14159 + 4.0));
    gl_FragColor = vec4(col * 0.5 + 0.5, 1.0);
}