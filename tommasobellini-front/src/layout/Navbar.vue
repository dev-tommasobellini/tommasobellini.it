<template>
  <div class="navbar">
    <!-- <div class="mobileMenuLeft">
        <div :class="menuClicked ? 'showMenuOpenLeft' : ''"></div>
    </div> -->
      <div class="leftLogo">
        <div>
          <h2>Tommaso Bellini</h2>
        </div>
      </div>
      <div class="mobileMenu">
        <div :class="menuClicked ? 'showMenuOpen' : ''">
          <div v-if="showExit" :class="menuClicked ? 'menuListMobile' : 'display: none'">
            <ul>
              <li class="" v-for="item in menu" :key="item.id">
                <a  @click="clickMenuItem(item.section)">
                  <div class="title">
                    <span class="text write" data-splitting="lines">{{ item.name }}</span>
                  </div>
                </a>
              </li>
            </ul>
          </div>

        </div>
        <a @click="onClickMenu" class="icons">
          <span v-if="showApps">
           <Apps class="closeIcon"/>
          </span>
          <span v-if="showExit">
            <Close/>
          </span>
        </a>
      </div>


    <div class="centralMenu">

      <ul>
        <li class="" v-for="item in menu" :key="item.id">
          <a :href="item.url" >
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
import Close from 'vue-material-design-icons/Close.vue';
import Apps from 'vue-material-design-icons/Apps.vue';

export default {
  name: "Navbar",
  data() {
    return {
      menuClicked: false,
      showApps: true,
      showExit: false,
      menu: [
        {
          name: "Home",
          url: "/",
          section: 'introContainer'
        },
        {
          name: "Projects",
          url: "#projects",
          section: 'projects'
        },
        {
          name: "About",
          url: "#about",
          section: 'secondSectionContainer'
        },
        {
          name: "Contact",
          url: "#contact",
          section: 'contact'
        }
      ]
    };
  },
  methods: {
    onClickMenu() {
      console.log('ciao')
      console.log(this.menuClicked)
      this.showApps = !this.showApps
      this.showExit = !this.showExit
      this.menuClicked = !this.menuClicked
    },
    clickMenuItem(className) {
      const el = document.getElementsByClassName(className)[0];
        console.log(el)
        if (el) {
            el.scrollIntoView({behavior: "auto", block: "start"});
        }
    }
  },
  components: {
      Apps,
      Close
  }
};
</script>
<style scoped>
.navbar {
  position: absolute;
  font-family: 'Montserrat';
  top: 0;
  left: 0;
  height: 5vw;
  width: 100%;
}

li {
  list-style: none;
}
a {
  text-decoration: none;
  font-style: bold;
  color: red;
}
 .leftLogo{
   color: antiquewhite;
   margin: 55px;
   text-transform: uppercase;
 }
 .mobileMenu {
    position: fixed;
    top: 50px;
    right: 50px;
    font-size: 40px;
    display: flex;
    justify-content: flex-end;
    align-items: center;
    z-index: 99999;
    text-transform: uppercase;
}
.mobileMenuLeft{
    position: fixed;
    top: 50px;
    left: 50px;
    font-size: 30px;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    z-index: 99999;
    text-transform: uppercase;
}
.centralMenu {
  list-style: none;
  display: none;
  flex-direction: column;
}
 .menuListMobile {
      display: block;
      margin-top: 25vh;
      margin-left: 10vh;
      opacity: 0;
      animation: showUp 2s 2s forwards;
}
.showMenuOpen {
  display: block;
  position: absolute;
  top: -50px;
  right: -50px;
  width: 100vh;
  height: 100vh;
 background-image: url('../assets/ep_naturalblack.png');
        animation: slide 40s linear infinite;  border-radius: 0 0 0 90%;
  z-index: 0;
  transition: all 2s;
}
.showMenuOpenLeft {
  display: block;
  position: absolute;
  top: -50px;
  left: -50px;
  width: 100vh;
  height: 100vh;
  background-image: url('../assets/ep_naturalblack.png');
  animation: slide 40s linear infinite;  border-radius: 0 90% 0 0;
  z-index: 0;
  transition: all 2s;
}
.menuListMobile ul li {
  line-height: 2em;
}
.menuListMobile ul li:hover {
  cursor: pointer;

}

.title {
  position: relative;
  text-align: center;
  transform: translateZ(0);
  transform-style: preserve-3d;
}
.text:hover{
  color: white;
  text-decoration: line-through;
  font-style: oblique;
  transform: perspective(100px);
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
@keyframes showUp {
  from {
    opacity: 0;
  }
  to {
    opacity:1;
  }
}
@media (max-width: 767px) {
    .navbar {
        display: inline;
        position: absolute;
        font-family: "Courier New", Courier, "Lucida Sans Typewriter",
            "Lucida Typewriter", monospace;
        top: 0;
        left: 0;
        height: 10vw;
        width: 100%;
    }
    a, a:hover, a:active, a:visited, a:focus {
        text-decoration:none;
        background-color: transparent;
         font-size: 30px;
          z-index: 1;
    }
    .leftLogo{
      color: antiquewhite;
      margin: 30px;
      text-transform: uppercase;
      font-size: 10px;
      display: none;
    }
    .mobileMenu {
        position: relative;
        display: flex;
        justify-content: flex-end;
        align-items: center;
    }
    .material-design-icon:hover {
      cursor: pointer;
    }
    .showMenuOpen {
      display: block;
      position: absolute;
      top: -50px;
      right: -50px;
      width: 55vh;
      height: 300px;
      background-color: rgba(0, 0, 0, 0.5);
      border-radius: 0 0 0 90%;
      z-index: 0;
    }
    .centralMenu {
        display: none;
    }
    .menuListMobile {
      display: block;
      margin-top: 50px;
    }
    .menuListMobile ul li {
      line-height: 1em;
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
      font-size: 5vw;
      line-height: 1;
      text-transform: uppercase;
      letter-spacing: 3px;
    }

    .closeIcon:hover {
      transform: rotate(90deg);
    }

}
</style>
