<template>
  <div class="navbar">
      <div class="mobileMenu">
        <a>
            <Apps/>
        </a>
      </div>
      

    <div class="centralMenu">

      <ul>
        <li class="" v-for="item in menu" :key="item.id">
          <a :href="item.url">
            <div class="title">
              <span class="text write" data-splitting="lines">{{ item.name }}</span>
              <span aria-hidden="true" class="text laser" data-splitting="lines">{{ item.name }}</span>
            </div>
          </a>
        </li>
      </ul>
    </div>
  </div>
</template>
<script>
import "../../static/animations.css";
import Apps from 'vue-material-design-icons/Apps.vue';

export default {
  name: "Navbar",
  data() {
    return {
      menu: [
        {
          name: "Home",
          url: "/"
        },
        {
          name: "Projects",
          url: "projects"
        },
        {
          name: "About",
          url: "#/about"
        },
        {
          name: "Contact",
          url: "contact"
        }
      ]
    };
  },
  components: {
      Apps
  }
};
</script>
<style scoped>
.navbar {
  position: absolute;
  font-family: "Courier New", Courier, "Lucida Sans Typewriter",
    "Lucida Typewriter", monospace;
  top: 0;
  left: 0;
  height: 5vw;
  width: 100%;
}
ul {
  display: flex;
  justify-content: space-around;
}
li {
  list-style: none;
}
a {
  text-decoration: none;
  font-style: bold;
  color: red;
}
.mobileMenu {
    display: none;
}
.centralMenu {
  list-style: none;
  display: flex;
  flex-direction: column;
}

.title {
  position: relative;
  text-align: center;
  transform: translateZ(0);
  transform-style: preserve-3d;
}

.title .text {
  font-family: sans-serif;
  font-weight: 400;
  font-size: calc(20vw / var(--word-total));
  line-height: 1;
}

.title .write .word {
  color: hsl(0, 0%, 80%);
  text-shadow: 0 0 0.1em currentColor;
  transform-style: preserve-3d;
  animation: write linear both;
}

.title .laser {
  position: absolute;
  top: 0;
  left: 0;
  /* To avoid the blur getting masked by the clip-path we had to duplicate the element */
  filter: blur(4px) contrast(10);
  pointer-events: none;
}

.title .laser .word {
  display: inline-block;
}

.title .laser .word {
  color: hsl(0, 100%, 75%);
  text-shadow: 0 0 0.1em currentColor;
  transform: translateZ(5px);
  animation: laser linear both;
}

.title .write .word,
.title .laser .word {
  animation-duration: 4s;
  animation-delay: calc(0.3s + var(--word-index) * 160ms);
  animation-iteration-count: infinite;
}

.title:hover .word,
.title:hover .word {
  animation-play-state: paused;
}

/* .title .text .word,
.title .text .word::before {
  animation-play-state: paused;
  animation-delay: -0.4s;
} */

@keyframes write {
  from,
  30% {
    clip-path: polygon(-20% 0%, -15% 0%, -15% 100%, -20% 100%);
  }
  70%,
  to {
    clip-path: polygon(-15% 0%, 120% 0%, 120% 100%, -15% 100%);
  }
}

@keyframes laser {
  from,
  30% {
    clip-path: polygon(-20% 0%, -15% 0%, -15% 100%, -20% 100%);
  }
  70%,
  to {
    clip-path: polygon(115% 0%, 120% 0%, 120% 100%, 115% 100%);
  }
}
@media (max-width: 767px) {
    .navbar {
        position: absolute;
        font-family: "Courier New", Courier, "Lucida Sans Typewriter",
            "Lucida Typewriter", monospace;
        top: 0;
        left: 0;
        height: 10vw;
        width: 100%;
    }
    a {
        font-size: 30px;
    }
    .mobileMenu {
        position: relative;
        margin: 25px;
        display: flex;
        justify-content: flex-end;
        align-items: center;
    }      
    .centralMenu {
        display: none;
    }
}
</style>