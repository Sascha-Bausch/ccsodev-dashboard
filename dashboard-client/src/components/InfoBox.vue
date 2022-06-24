<template>
    <div class="info-box">
      <h4>{{mitarbeiter}}</h4>
    </div>
</template>

<script>

export default {
    name: "InfoBox",
    props: {
       mitarbeiter: String
    },
  };
</script>

<style scoped>
.info-box {
    height: 500px;
    width: 500px;
    border: 1px solid black;
}
</style>

