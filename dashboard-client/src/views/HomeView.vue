<template>
  <div class="home">
    <img alt="SVA logo" src="../assets/SVA-Logo.png" />
    <DashHome msg="CC Software Development Dashboard" />
  </div>
</template>

<script>
// @ is an alias to /src
import DashHome from "@/components/DashHome.vue";

export default {
  name: "HomeView",
  components: {
    DashHome,
  },
};
</script>
