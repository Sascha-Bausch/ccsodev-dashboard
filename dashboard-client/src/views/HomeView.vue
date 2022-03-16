<template>
  <div class="home">
    <!-- <img alt="SVA logo" src="assets/SVA-Logo.png" /> -->
    <DashHome msg="Competence Center Software Development" />
  </div>
</template>

<script>
// @ is an alias to /src
import DashHome from "@/components/DashHome.vue"

export default {
  name: "HomeView",
  components: {
    DashHome,
  },
};
</script>

<style scoped>
.home {
  color: #427fb9;
}
</style>