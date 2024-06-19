import * as THREE from 'three'

// Canvas
const canvas = document.querySelector('canvas.webgl')

// Scene
const scene = new THREE.Scene()

/**
 * Objects
 */
const geometry = new THREE.BoxGeometry(1, 1, 1)
const material = new THREE.MeshBasicMaterial({ color: 0xff0000 })
const mesh = new THREE.Mesh(geometry, material)
// mesh.position.x = 0.7
// mesh.position.z = -0.6
// mesh.position.z = 1

mesh.position.set(0.7, -.6, 1)
mesh.scale.x = 2
mesh.scale.y = 0.5
mesh.scale.z = 0.5

mesh.rotation.reorder('YXZ')

mesh.rotation.x = 0.25 * Math.PI
mesh.rotation.y = 0.25 * Math.PI
//scene.add(mesh)

/***
 * Objects
 */

const group = new THREE.Group()
const cube1 = new THREE.Mesh (
    new THREE.BoxGeometry(1, 1, 1),
    new THREE.MeshBasicMaterial({color: 0xff0000})
)
group.add(cube1)
const cube2 = new THREE.Mesh (
    new THREE.BoxGeometry(1, 1, 1),
    new THREE.MeshBasicMaterial({color: 0xfffff})
)
cube2.position.x = -2
group.add(cube2)

const cube3 = new THREE.Mesh (
    new THREE.BoxGeometry(1, 1, 1),
    new THREE.MeshBasicMaterial({color: 0xffffff})
)
cube3.position.x = 2
scene.add(cube3)
group.position.y = 1
group.scale.y = 1
group.rotation.y = 1
scene.add(group)

//Axes helper
const axesHelper = new THREE.AxesHelper(1)
scene.add(axesHelper)

/**
 * Sizes
 */
const sizes = {
    width: 800,
    height: 600
}

/**
 * Camera
 */
const camera = new THREE.PerspectiveCamera(75, sizes.width / sizes.height)
camera.position.z = 3

scene.add(camera)
console.log(mesh.position.distanceTo(camera.position))

/**
 * Renderer
 */
const renderer = new THREE.WebGLRenderer({
    canvas: canvas
})
renderer.setSize(sizes.width, sizes.height)
renderer.render(scene, camera)