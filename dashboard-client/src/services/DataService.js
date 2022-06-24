import Api from '@/services/Api'

export default {
    getData () {
        return Api().get('getData')
    }
}