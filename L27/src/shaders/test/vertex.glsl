
        uniform vec2 uFrequency;
        uniform float uTime;

        attribute float aRandom;
 

        varying vec2 vUv;
        varying float vElevation;


        void main()
        {
            vec4 modelPosition = modelMatrix * vec4(position, 1.0);

            float elevation = sin(modelPosition.x * uFrequency.x - uTime) * 0.1;
            elevation += sin(modelPosition.x * uFrequency.y - uTime) * 0.1;

            modelPosition.z += elevation;

           //modelPosition.z += aRandom * 0.1;
          

            vec4 viewPosition = viewMatrix * modelPosition;
            vec4 projectedPosition = projectionMatrix * viewPosition;

            gl_Position = projectedPosition; //position of vertex on the render
            //gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);

            vUv = uv;
            vElevation = elevation;
    
        }