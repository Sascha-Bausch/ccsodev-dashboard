<template>
    <div>
        <input id="email"
            type="email"
            name="email"
            v-model="email"
            placeholder="email" />
        <br>
        <input id="pw"
            type="password"
            name="password"
            v-model="password"
            placeholder="password" />
        <br>
        <div class="error" v-html="error" />
        <br>
        <button @click="register">login</button>
    </div>
</template>

<script>
import AuthenticationService from "@/services/AuthenticationService"

export default {
    data () {
        return {
            email:'',
            password: '',
            error: null
        }        
    },
    methods: {
        async register () {
            console.log('button was clicked', this.email, this.password)
            try {
                await AuthenticationService.register({
                    email: this.email,
                    password: this.password
                })
            } catch (error) {
                this.error = error.response.data.error
            }
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
/* div {
    margin: 40px;
} */
input {
    margin: 5px;
}
button {
    margin: 5px;
}
#email {
    margin-top: 5%;
}
.error {
    color: red;
}
</style>