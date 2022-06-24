<template>
  <div class="home">
    <h2>{{ msg }}</h2>
  </div>
  
  
</template>

<script>
export default {
  name: "DashHome",
  props: {
    msg: String,
  },
};
</script>

<style scoped>
h2 {
  color: rgb(80, 130, 195)
}
</style>
