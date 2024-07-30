import './style.css'
import App from './App.jsx'
import { createRoot } from 'react-dom/client'

const root = createRoot(document.querySelector('#root'))
const toto = 'there'

root.render(
    <>
    <App clickersCount={ 3 }>
        <h1>My First React App</h1>
        <h2>And a fancy subtitle</h2>
</App>
</>
);