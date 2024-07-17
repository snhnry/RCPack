/*
 Generated from https://non0reo.github.io/ImgToShader/
*/

#version 150

in vec4 vertexColor;

uniform vec4 ColorModulator;

out vec4 fragColor;

void main() {
    vec4 color = vertexColor;
    if (color.a == 0.0) discard;

    fragColor = color * ColorModulator;

    if(color.rgb == vec3(1.0)) {
        fragColor = vec4(vec3(0.0, 143, 255) / 255, color.a);
    }

}