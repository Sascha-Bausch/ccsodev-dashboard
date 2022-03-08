<template>
  <div class="about">
    <h2>Version Eisen³</h2>
    <router-link to="/">Go back</router-link>
  </div>
  <div id="app">
    <h2>{{ date }}</h2>
    <p>Do you want to know what time it is? {{ showTime }}</p>
    <button @click="clickButton">Click me!</button>
    <p>It's: {{ buttonClick }}</p>
  </div>
</template>

<script>
import { ref, onMounted, watch } from "vue";
export default {
  setup() {
    const showTime = ref(0);
    function clickButton() {
      showTime.value++;
    }

    const buttonClick = ref("");
    watch(showTime, () => {
      buttonClick.value = new Date().toTimeString();
    });

    let date = ref("");
    onMounted(() => {
      date.value = new Date().toDateString();
    });

    return {
      date,
      showTime,
      clickButton,
      buttonClick,
    };
  },
};
</script>
