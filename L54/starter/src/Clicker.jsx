import { useEffect, useState, useRef } from 'react'
export default function Clicker({ keyName, color = 'darkOrchid', increment}) {
     
    const [ count, setCount ] = useState(parseInt(localStorage.getItem(keyName) ?? 0))
    const buttonRef = useRef()
    console.log(buttonRef)

    useEffect(() => {

        buttonRef.current.style.backgroundColor = "papayawhip"
        buttonRef.current.style.color = "orchid"
       return () => {
        localStorage.removeItem(keyName)
       }
    }, [])

    useEffect(() => {
        localStorage.setItem(keyName, count) //key and value
    }, [count])

    const buttonClick = () => {
        setCount(value => value + 1)
        increment()
    }

    return <>
     <div style = {{ color: color }}> Click count : { count } </div>
    <button ref = {buttonRef} onClick = {buttonClick}> Click me! </button>
    
   
    </> 
}