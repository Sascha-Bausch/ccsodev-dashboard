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

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h2 {
  color: #4e83bf;
}
</style>
