import { useState, useMemo, useRef } from 'react'
import Clicker from './Clicker.jsx'
import People from './People.jsx'

export default function App({ clickersCount, children }) {

    const [ hasClicker, setHasClicker ] = useState(true)
    const [ count, setCount ] = useState(0)

    const buttonRef = useRef()
    console.log(buttonRef)

    const toggleClicker = () => {
        setHasClicker(!hasClicker)
    }

    const increment = () => {
        setCount(count => count + 1)
    }

 //   console.log(`hsl(${Math.random() * 360}deg, 100%, 70%)`)

    const tempArray = [...Array(clickersCount)]
    console.log(tempArray)

    
// const colors = []

// for (let i = 0; i < clickersCount; i++) {
//     colors.push(`hsl(${Math.random() * 360}deg, 100%, 70%)`)
// }

const colors = useMemo(() => {
    const colors = []
    for (let i = 0; i < clickersCount; i++) {
    colors.push(`hsl(${Math.random() * 360}deg, 100%, 70%)`)
    }
    return colors

}, [clickersCount])

console.log(colors)

// `hsl(${Math.random() * 360}deg, 100%, 70%)`,


    return <>
    { children }

    <div>
        Total Count: {count}
    </div>

    <button onClick = {toggleClicker}> {hasClicker ? 'Hide Clicker' : 'Show Clicker'}  </button>
    { hasClicker && <>
    { [...Array(clickersCount)].map((value, index) => 
        <Clicker key = {index}
        increment = { increment } keyName = {`count${index}`} 
        color = { colors[index] }/> 
    )}
    
    </>}

    <People>
    </People>
    
    </>
}

