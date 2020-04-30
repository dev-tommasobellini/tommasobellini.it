<template>
  <div id="app">
    <Navbar />
    <IntroSection />
    <!-- <FirstSection /> -->
    <transition name="fade">
      <SecondSection />
    </transition>
    <ProjectsSection />
    <ThoughtsSection />
    <ContactSection />
    <!-- <router-view/> -->
    <FooterBar />
  </div>
</template>

<script>
import Navbar from './layout/Navbar'
import FirstSection from './components/FirstSection';
import SecondSection from './components/SecondSection';
import ProjectsSection from './components/ProjectsSection';
import ThoughtsSection from './components/ThoughtsSection';
import ContactSection from './components/ContactSection';
import IntroSection from './components/IntroSection';
import FooterBar from './layout/FooterBar';

export default {
  name: 'App',
  components: {
    Navbar,
    FirstSection,
    SecondSection,
    ProjectsSection,
    ThoughtsSection,
    ContactSection,
    IntroSection,
    FooterBar
  }
}
</script>

<style>
html, body {
  width: 100vw;
}
#app {
  font-family: 'Montserrat';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
}
body{
  font-family: 'Montserrat';
}
a {
  text-decoration: none;
}
@media (max-width: 767px) {
  #app {
    margin: 0;
    padding: 0;
    z-index: -1;
  }
  body{
    margin: 0;
    padding: 0;
  }
}
</style>
