<template>
  <div class="home">
    <!-- <img alt="SVA logo" src="assets/SVA-Logo.png" /> -->
    <DashHome msg="Competence Center Software Development" />
    <DashMap />
  </div>
</template>

<script>
// @ is an alias to /src
import DashHome from "@/components/DashHome.vue"
import DashMap from "@/components/DashMap.vue";

export default {
  name: "HomeView",
  components: {
    DashHome,
    DashMap
},
};
</script>

<style scoped>

</style>