<template>
  <nav>
    <router-link to="/">Home</router-link> |
    <router-link to="/about">About</router-link> |
    <router-link to="/register">Login</router-link>
  </nav>
  <router-view />
</template>

<script>
export default {
  
}
</script>


<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
}

nav {
  padding: 15px;
  background-color: #4e83bf;
}

nav a {
  font-weight: bold;
  color: black;
}

nav a.router-link-exact-active {
  color: white;
}
</style>
