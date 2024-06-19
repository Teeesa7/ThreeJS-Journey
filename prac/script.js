import * as THREE from 'three'

const canvas = document.querySelector('canvas.webgl')

//1. Scene
const scene = new THREE.Scene()

//2. Objects
const geometry = new THREE.SphereGeometry(1, 10, 100)
const material = new THREE.MeshBasicMaterial({color: 'white', wireframe: true})
const mesh = new THREE.Mesh(geometry, material)
// mesh.position.x = 2
// mesh.position.y = 2
// mesh.scale.x = 2
// mesh.scale.y = -2
mesh.rotation.y = Math.PI * 0.25

//add stuff to the scene
scene.add(mesh)

const sizes = {
    width: window.innerWidth,
    height: window.innerHeight
}

//3. Camera
const camera = new THREE.PerspectiveCamera(75, sizes.width/sizes.height)
scene.add(camera)
camera.position.z = 3
camera.lookAt(mesh.position)

//4. Renderer
const renderer = new THREE.WebGLRenderer({
    canvas: canvas
})
renderer.setSize(sizes.width, sizes.height)

const clock = new THREE.Clock()
const tick = () => {

    const elpasedTime = clock.getElapsedTime()

    camera.position.x = Math.cos(elpasedTime)
    let count = 5
    mesh.position.x = 1
    while (count -- > 0) {
    mesh.scale.x += 0.01
    } 
    while (count ++ < 5) {
        mesh.scale.x -= 0.01
    }
    //camera.position.y = Math.sin(elpasedTime)
    camera.lookAt(mesh.position)
    renderer.render(scene, camera)
    window.requestAnimationFrame(tick)
}

tick()




