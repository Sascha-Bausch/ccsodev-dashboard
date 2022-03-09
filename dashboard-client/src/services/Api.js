// connector to backend for hitting different endpoints
import axios from 'axios'

export default () => {
    return axios.create({
        baseURL: `http://localhost:8080/`
    })
}
