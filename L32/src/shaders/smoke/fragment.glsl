varying vec2 vUv;
uniform float uTime;
uniform vec3 uColor;
uniform sampler2D uPerlinTexture;

void main() {

    // Scale and animate
    vec2 smokeUv = vUv;
    smokeUv.x *= 0.5;
    smokeUv.y *= 0.3;
    smokeUv.y -= uTime * 0.03;

    // Smoke
    float smoke = texture(uPerlinTexture, smokeUv).r; // to pick colour from the texture at the vUv coordima+nate
    
    // Remap
    smoke = smoothstep(0.4, 1.0, smoke);

    // Edges
    smoke *= smoothstep(0.0, 0.1, vUv.x);
    smoke *= smoothstep(0.0, 0.1, 1.0 - vUv.x);
    smoke *= smoothstep(0.0, 0.4, 1.0 - vUv.y);
    smoke *= smoothstep(0.0, 0.4, vUv.y);

   // gl_FragColor = vec4(uColor, smoke);
   gl_FragColor = vec4(0.6, 0.3, 0.2, smoke);
    #include <tonemapping_fragment>
    #include <colorspace_fragment>
}