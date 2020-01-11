<template>
    <div class="projects">
        <h1>Projects coming soon..</h1>
    </div>
</template>

<script>
export default {
    name: 'ProjectsSection',
    data() {
        return {

        }
    },
    components: {}
}
</script>

<style scoped>
    .projects {
        width: 100%;
        height: 100vh;
        background-color: bisque;
        color: rosybrown;
        display: flex;
        justify-content: center;
        align-items: center;
        border-radius: 0 50% 0;
    }
    @media (max-width: 767px) {
      .projects {
        height: 100vh;
        border-radius: 0;
      }
    }
</style>
