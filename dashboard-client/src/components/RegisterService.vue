<template>
    <div>
        <h2>Register</h2>
        <input 
            type="email"
            name="email"
            v-model="email"
            placeholder="email" />
        <br>
        <input
            type="password"
            name="password"
            v-model="password"
            placeholder="password" />
        <br>
        <button @click="register">Register</button>
    </div>
</template>

<script>
import AuthenticationService from "@/services/AuthenticationService"

export default {
    data () {
        return {
            email:'',
            password: ''
        }        
    },
    methods: {
        async register () {
            console.log('button was clicked', this.email, this.password)
            await AuthenticationService.register({
                email: this.email,
                password: this.password
            })
        }
    },
    /* watch: {
        email (value) {
            console.log('email has changed', value);
        }
    }, */
    /* methods: {
        register () {
            console.log('button was clicked', this.email, this.password);
        }
    }, */
    /* mounted () {
        
    } */
}
</script>

<style scoped>
input {
    margin: 5px;
}
button {
    margin: 5px;
}
</style>