<template>
  <div class="about">
    <h2>Systemvertrieb Alexander GmbH</h2>
    <a href="https://www.sva.de/" target="_blank" rel="nofollow">www.sva.de</a>
  </div>
  <div class="logo">
    <img alt="SVA logo" src="SVA-Logo.png" />
    <!-- <router-link to="/">Go back</router-link> -->
  </div>
  <div id="date">
    <h3>{{ date }}</h3>
  </div>
  <button @click="clickButton">Uhrzeit!</button>
  <div id="time">
    <h3>{{ showTime }}</h3>
    <!-- <p>Number of button clicks: {{ buttonClick }}</p> -->
  </div>
</template>

<script>
import { ref, onMounted, watch } from "vue";
export default {
  setup() {
    const buttonClick = ref(0);
    function clickButton() {
      buttonClick.value++;
    }

    const showTime = ref("");
    watch(buttonClick, () => {
      showTime.value = new Date().toTimeString();
    });

    let date = ref("");
    onMounted(() => {
      date.value = new Date().toDateString();
    });

    return {
      date,
      showTime,
      clickButton,
      /* buttonClick, */
    };
  },
};
</script>

<style scoped>
a {
  color: #4e83bf;
}
button {
  width: 110px;
  height: 40px;
  background-color: #4e83bf;
  color: black;
  font-family: 'Courier New', Courier, monospace;
  font-size: large;
}

#date {
  font-family: 'Courier New', Courier, monospace;
  font-size: large;
}
.logo {
  margin: 5px;
}
</style>