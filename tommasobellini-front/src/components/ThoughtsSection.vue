<template>
    <div class="thoughts">
        <h1>Thoughts coming soon..</h1>
      <div>
        <p>Sometimes i use to be like a philosopher, i love write my thoughts.</p>
      </div>
    </div>
</template>

<script>
export default {
    name: 'ThoughtsSection',
    data() {
        return {

        }
    },
    components: {}
}
</script>

<style scoped>
    .thoughts {
        width: 100%;
        height: 100vh;
        background-color: lightseagreen;
        color: whitesmoke;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        border-radius: 0 50% 0;
    }
    @media (max-width: 767px) {
      .thoughts {
        height: 100vh;
        border-radius: 0;
        padding: 30px;
      }
    }
</style>
