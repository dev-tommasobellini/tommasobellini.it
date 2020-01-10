<template>
  <div class="contact">
    <h1>Contact coming soon..</h1>
  </div>
</template>

<script>
    export default {
        name: 'ContactSection',
        data() {
            return {

            }
        },
        components: {}
    }
</script>

<style scoped>
  .contact {
    width: 100%;
    height: 100vh;
    background-color: lavender;
    color: rosybrown;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50% 0 50%;
  }
  @media (max-width: 767px) {
    .contact {
      height: 100vh;
      border-radius: 20% 0 20%;
    }
  }
</style>
