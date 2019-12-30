<template>
  <div id="app">
    <IntroSection />
    <!-- <FirstSection /> -->
    <SecondSection />
    <!-- <router-view/> -->
  </div>
</template>

<script>
import FirstSection from './components/FirstSection';
import SecondSection from './components/SecondSection';
import IntroSection from './components/IntroSection';

export default {
  name: 'App',
  components: {
    FirstSection,
    SecondSection,
    IntroSection
  }
}
</script>

<style>
html, body {
  height: 100vh;
  width: 100vw;
}
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
}
body{
  font-family: 'Roboto', sans-serif;
}
</style>
