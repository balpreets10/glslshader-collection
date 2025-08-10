# GLSL Shader Collection

A curated collection of GLSL shaders for real-time graphics. This repository contains various fragment shaders that can be used with WebGL, Three.js, Shadertoy, or other GLSL-compatible environments.

![Shader Preview](shader-preview.png) <!-- Replace with your actual preview image -->

## Shaders Included

1. **Vertex Basic** - `vertex_basic.glsl`  
   Basic Vertex Shader - Standard for most 2D/3D rendering.

2. **Vertex Wave** - `vertex_wave.glsl`  
   Animated Vertex Shader - Wave distortion.

3. **Basic Color Shader** - `fragment_color.glsl`  
   Basic Color Shader.

4. **Gradient Shader** - `fragment_gradient.glsl`  
   Gradient Shader - Smooth color transitions
   
5. **Animated Rainbow Shader** - `fragment_rainbow.glsl`  
   Animated Rainbow Shader
   
6. **Plasma Effect Shader** - `fragment_plasma.glsl`  
   Plasma Effect Shader
   
7. **Simple Noise Shader** - `fragment_noise.glsl`  
   Simple Noise Shader
   
8. **Ripple Effect Shader** - `fragment_ripple.glsl`  
   Ripple Effect Shader
   
9. **Pixelation Effect Shader** - `fragment_pixelate.glsl`  
   Pixelation Effect Shader
   
10. **Distortion Shader** - `fragment_distortion.glsl`  
   Distortion Shader
   
11. **Film Grain Shader** - `fragment_film_grain.glsl`  
   Film Grain Shader

## Usage

These shaders can be used in several ways:

### WebGL/Three.js
```glsl
/ JavaScript WebGL setup example:

// Compile shader function
function compileShader(gl, type, source) {
    const shader = gl.createShader(type);
    gl.shaderSource(shader, source);
    gl.compileShader(shader);
    
    if (!gl.getShaderParameter(shader, gl.COMPILE_STATUS)) {
        console.error('Shader compile error:', gl.getShaderInfoLog(shader));
        gl.deleteShader(shader);
        return null;
    }
    
    return shader;
}

// Create shader program
function createProgram(gl, vertexShaderSource, fragmentShaderSource) {
    const vertexShader = compileShader(gl, gl.VERTEX_SHADER, vertexShaderSource);
    const fragmentShader = compileShader(gl, gl.FRAGMENT_SHADER, fragmentShaderSource);
    
    const program = gl.createProgram();
    gl.attachShader(program, vertexShader);
    gl.attachShader(program, fragmentShader);
    gl.linkProgram(program);
    
    if (!gl.getProgramParameter(program, gl.LINK_STATUS)) {
        console.error('Program link error:', gl.getProgramInfoLog(program));
        return null;
    }
    
    return program;
}

// Example uniform setup for animated shaders:
gl.useProgram(program);
const timeLocation = gl.getUniformLocation(program, 'u_time');
gl.uniform1f(timeLocation, performance.now() * 0.001);

const resolutionLocation = gl.getUniformLocation(program, 'u_resolution');
gl.uniform2f(resolutionLocation, canvas.width, canvas.height);
*/

Fork the repository

Create a new branch for your shader

Submit a pull request

Include both the .frag file and a preview image.

License
MIT License - Free to use for both personal and commercial projects.
