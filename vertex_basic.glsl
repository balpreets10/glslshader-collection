// Basic Vertex Shader - Standard for most 2D/3D rendering
// vertex_basic.glsl
attribute vec3 a_position;
attribute vec2 a_texCoord;
attribute vec3 a_normal;

uniform mat4 u_modelViewProjection;
uniform mat4 u_model;
uniform mat4 u_view;
uniform mat4 u_projection;

varying vec2 v_texCoord;
varying vec3 v_normal;
varying vec3 v_worldPos;

void main() {
    v_texCoord = a_texCoord;
    v_normal = normalize((u_model * vec4(a_normal, 0.0)).xyz);
    v_worldPos = (u_model * vec4(a_position, 1.0)).xyz;
    
    gl_Position = u_modelViewProjection * vec4(a_position, 1.0);
}