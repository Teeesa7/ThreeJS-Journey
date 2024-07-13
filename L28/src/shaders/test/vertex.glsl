varying vec2 vUv;
uniform float uTime;
//uniform mat4 modelPosition;

void main()
{
    vec4 modelPosition = modelViewMatrix * vec4(position, 1.0);
    modelPosition.z += sin(modelPosition.x  * 10.0 - uTime) * 0.1;
    modelPosition.z += sin(modelPosition.y * 10.0 - uTime) * 0.1;
    
    //gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);
    gl_Position = projectionMatrix * modelPosition;
    vUv = uv;
}