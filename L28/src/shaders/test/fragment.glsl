varying vec2 vUv;

// Pattern 23
 float random(vec2 st)
{
    return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

void main()
{

    // Pattern 1
    // gl_FragColor = vec4(vUv, 1.0, 1.0);

    //Pattern 2
    // gl_FragColor = vec4(vUv.x, vUv.y, 0, 1.0);

    // Pattern 3
    // gl_FragColor = vec4(vUv.x, vUv.x, vUv.x, 1.0);

    //Pattern 4
    // gl_FragColor = vec4(vUv.y, vUv.y, vUv.y, 1.0);

    //Pattern 5
    // float strength = 1.0 - vUv.y;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    //Pattern 6
    // float strength = vUv.y * 10.0;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 7
   //  float strength = mod(vUv.y * 10.0, 1.0);
   // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 8
    // float strength = mod(vUv.y * 10.0, 1.0);
    // strength = step(0.5, strength);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

     // Pattern 9
    // float strength = mod(vUv.y * 10.0, 1.0);
    // strength = step(0.8, strength);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    //Pattern 10
    // float strength = mod(vUv.x * 10.0, 1.0);
    // strength = step(0.8, strength);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    //Pattern 11
    // float strength = step(0.8, mod(vUv.x * 10.0, 1.0));
    // strength += step(0.8, mod(vUv.y * 10.0, 1.0));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

     //Pattern 12
    // float strength = step(0.8, mod(vUv.x * 10.0, 1.0));
    // strength *= step(0.8, mod(vUv.y * 10.0, 1.0));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    //Pattern 13
    // float strength = step(0.5, mod(vUv.x * 10.0, 1.0));
    // strength *= step(0.8, mod(vUv.y * 10.0, 1.0));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // // Pattern 14 - Problem
    // float strength = step(0.4, mod(vUv.y * 10.0, 1.0)) * step(0.8, mod(vUv.x * 10.0, 1.0));
    // strength += step(0.4, mod(vUv.x * 10.0, 1.0));
    // ///strength *= step(0.8, mod(vUv.y * 10.0, 1.0));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 15 - problem
    // float strength = abs(vUv.x - 0.5);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 16
    // float strength = min(abs(vUv.x - 0.5), abs(vUv.y - 0.5));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    //Pattern 18 
    // float strength = max(abs(vUv.x - 0.5), abs(vUv.y - 0.5));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 20 - Problem
    // float strength = step(0.2, (max(abs(vUv.x - 0.5), abs(vUv.y - 0.5))));
    // strength *= 1.0 - step(0.25, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 21
    // float strength = floor(vUv.x * 10.0) / 10.0;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 22
    // float strength = floor(vUv.x * 10.0) / 10.0;
    // strength *= floor(vUv.y * 10.0) / 10.0;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 23
    // float strength = random(vUv);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 24
    // vec2 gridUv = vec2(floor(vUv.x * 10.0) / 10.0, floor(vUv.y * 10.0) / 10.0);
    // float strength = random(gridUv);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 25 - problem
    // vec2 gridUv = vec2(floor(vUv.x * 10.0) / 10.0, floor((vUv.y + vUv.x * 0.5) * 10.0) / 10.0);
    // float strength = random(gridUv);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 26
    // float strength = length(vUv);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

     // Pattern 27
    // float strength = distance(vUv, vec2(0.5));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 28
    // float strength = 1.0 - distance(vUv, vec2(0.5));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 29
    // float strength = 0.015 / distance(vUv, vec2(0.5));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    //  // Pattern 30
    //  vec2 lightUv = vec2(
    //     vUv.x * 0.2 + 0.4,
    //     vUv.y
    //  );
    // float strength = 0.015  / distance(lightUv, vec2(0.5));
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    // Pattern 30
     vec2 lightUv = vec2(
        vUv.x * 0.2 + 0.4,
        vUv.y
     );
    float strength = 0.015  / distance(lightUv, vec2(0.5));
    gl_FragColor = vec4(strength, strength, strength, 1.0);

}