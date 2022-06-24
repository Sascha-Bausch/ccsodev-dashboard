<template>
  <div class="home">
    <DashHome msg="Competence Center Software Development" />
    <img alt="SVA logo" src="SVA-Logo.png" />
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
img {
  width: 75px;
  height: 48px;
}
</style>