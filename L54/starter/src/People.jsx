import { useEffect, useState } from "react"

export default function People(id) {

const [ people, setPeople ] = useState([])

const getPeople = async () => {
    const response = await fetch('https://jsonplaceholder.typicode.com/users')
    const result = await response.json()
    console.log(result)

    setPeople(result)

}

useEffect(() => {
    getPeople()
}, [])

    return <div>
        <h2> People </h2>
        { people.map(person => 
            <li key = { person.id }>{person.name} </li>
        )}
        
    </div>
}