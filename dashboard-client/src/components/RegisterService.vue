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
export default {
    data () {
        return {
            email:'abc',
            password: '123'
        }        
    },
    watch: {
        email (value) {
            console.log('email has changed', value);
        }
    },
    methods: {
        register () {
            console.log('button was clicked');
        }
    },
    mounted () {
        setTimeout(() => {
            this.email = 'things done changed'
        }, 2000)
    }
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