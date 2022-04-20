<template>
  <div class="home">
    <!-- <img alt="SVA logo" src="assets/SVA-Logo.png" /> -->
    <DashHome msg="Competence Center Software Development" />
    <DashPanel />
  </div>
</template>

<script>
// @ is an alias to /src
import DashHome from "@/components/DashHome.vue"
import DashPanel from "@/components/DashPanel.vue"

export default {
  name: "HomeView",
  components: {
    DashHome,
    DashPanel,
  },
};
</script>

<style scoped>

</style>