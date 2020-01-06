<template>
  <div :class="clickedArrows === true ? 'introContainer slideDown': 'introContainer'">
    <div class="spaceship">
    </div>
    <h1 class="line-1 anim-typewriter">Hi! Welcome in my portfolio.</h1>
    <h2 class="line-2 anim-typewriterDelay">Enjoy it!</h2>
    <div class="frameworkLogos">
      <!-- <img src="../assets/django-logo.png" width="1000"/> -->
    </div>
    <div class="introEnd anim-blinkArrows appearDelay">
      <div class="center-con">
        <div class="round" @click="clickArrows">
          <div id="cta">
            <span class="arrow primera next"></span>
            <span class="arrow segunda next"></span>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import ChevronDownIcon from "vue-material-design-icons/ChevronDown.vue";
import '../../static/animations.css'

export default {
  name: "IntroSection",
  data() {
      return {
        clickedArrows: false
      }
  },
  methods: {
    clickArrows() {
        const el = document.getElementsByClassName('secondSectionContainer')[0];
        console.log(el)
        if (el) {
            el.scrollIntoView({behavior: "auto", block: "start"});
        }
        // const el2 = document.getElementsByTagName('h1')[0];
        // console.log(el2.innerHTML)
        // const lettersList = el2.innerHTML.toString().split('')
        // console.log(lettersList)
        // el2.innerHTML = ''
        // lettersList.forEach(letter => {
        //     var span_node = document.createElement("span");             // Create a <li> node
        //     span_node.classList.add('fallDown')
        //     span_node.style.animationName = 'fallDown'
        //     span_node.style.animationPlayState = 'running'
        //     console.log(span_node.style.animationPlayState)
        //     var textnode = document.createTextNode(letter); 
        //     span_node.appendChild(textnode);                              // Append the text to <li>
        //     el2.appendChild(span_node)
        // })
    }
  },
  components: {
    ChevronDownIcon
  }
};
</script>

<style scoped>

.introContainer {
  height: 100vh;
  color: white;
  background-image: url('../assets/ep_naturalblack.png');
  animation: slide 40s linear infinite;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
.introEnd {
  opacity: 0;
  position: absolute;
  bottom: 5vh;
  left: 0;
  width: 100%;
  height: 50px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
.frameworkLogos {
  position: absolute;
  bottom: 50px;
  right: 50px;
  animation: shotBottomToTop 4s infinite;
}
.chevron-down-icon {
  font-size: 30px;
  color: grey;
}
.fallDown {
  animation: fallDown 1s 3s forwards;
}
.line-1,
.line-2 {
  position: relative;
  width: 30em;
  margin: 0 auto;
  border-right: 2px solid rgba(255, 255, 255, 0.75);
  font-size: 180%;
  font-family: "Courier New", Courier, "Lucida Sans Typewriter", "Lucida Typewriter", monospace; 
  text-align: center;
  white-space: nowrap;
  overflow: hidden;
  transform: translateY(-50%);
}
.line-2 {
  width: 5em;
}
/* Animation */
.anim-typewriter,
.anim-typewriterDelay {
  animation: typewriter 2s steps(70) 1s 1 normal both,
    blinkTextCursor 500ms steps(50) infinite normal;
}
.anim-typewriterDelay {
  animation: typewriter2 2s steps(20) 1s 1 normal both,
    blinkTextCursor 500ms steps(20) infinite normal;
  animation-delay: 2s;
}
.anim-blinkArrows {
  animation: blinkTextCursor 500ms infinite normal;
}
@keyframes typewriter {
  from {
    width: 0;
  }
  to {
    width: 17em;
  }
}
@keyframes typewriter2 {
  from {
    width: 0;
  }
  to {
    width: 6em;
  }
}
@keyframes blinkTextCursor {
  from {
    border-right-color: rgba(255, 255, 255, 0.75);
  }
  to {
    border-right-color: transparent;
  }
}
@keyframes  slide {
  from { background-position: 0 0; }
  to { background-position: -400px 0; }
}
@keyframes fallDown {
    from {
        opacity: 1;
        transform: translateY(0);
    }
    to {
        opacity: 0;
        transform : translateY(-400px);
    }
}

.center-con {
  display: flex;
  height: 100vh;
  align-items: center;
  justify-content: center;
  transform: rotate(90deg);

}

.round {
  position: absolute;
  border: 2px solid #fff;
  width: 40px;
  height: 40px;
  border-radius: 100%;
}

#cta {
  width: 100%;
  cursor: pointer;
  position: absolute;
}

#cta .arrow {
  left: 30%;
}
.arrow {
  position: absolute;
  bottom: 0;
  margin-left: 0px;
  width: 12px;
  height: 12px;
  background-size: contain;
  top: 14px;
}
.segunda {
  margin-left: 8px;
}
.next {
  background-image: url(data:image/svg+xml;base64,PHN2ZyBpZD0iTGF5ZXJfMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB2aWV3Qm94PSIwIDAgNTEyIDUxMiI+PHN0eWxlPi5zdDB7ZmlsbDojZmZmfTwvc3R5bGU+PHBhdGggY2xhc3M9InN0MCIgZD0iTTMxOS4xIDIxN2MyMC4yIDIwLjIgMTkuOSA1My4yLS42IDczLjdzLTUzLjUgMjAuOC03My43LjZsLTE5MC0xOTBjLTIwLjEtMjAuMi0xOS44LTUzLjIuNy03My43UzEwOSA2LjggMTI5LjEgMjdsMTkwIDE5MHoiLz48cGF0aCBjbGFzcz0ic3QwIiBkPSJNMzE5LjEgMjkwLjVjMjAuMi0yMC4yIDE5LjktNTMuMi0uNi03My43cy01My41LTIwLjgtNzMuNy0uNmwtMTkwIDE5MGMtMjAuMiAyMC4yLTE5LjkgNTMuMi42IDczLjdzNTMuNSAyMC44IDczLjcuNmwxOTAtMTkweiIvPjwvc3ZnPg==);
}

@keyframes bounceAlpha {
  0% {
    opacity: 1;
    transform: translateX(0px) scale(1);
  }
  25% {
    opacity: 0;
    transform: translateX(10px) scale(0.9);
  }
  26% {
    opacity: 0;
    transform: translateX(-10px) scale(0.9);
  }
  55% {
    opacity: 1;
    transform: translateX(0px) scale(1);
  }
}
.appearDelay {
  animation-name: appear;
  animation-duration: 2s;
  animation-delay: 4s;
  animation-fill-mode: forwards;
}
@keyframes appear {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}
.bounceAlpha {
  animation-name: bounceAlpha;
  animation-duration: 1.4s;
  animation-iteration-count: infinite;
  animation-timing-function: linear;
}

.arrow.primera.bounceAlpha {
  animation-name: bounceAlpha;
  animation-duration: 1.4s;
  animation-delay: 0.2s;
  animation-iteration-count: infinite;
  animation-timing-function: linear;
}

.round .arrow {
  animation-name: bounceAlpha;
  animation-duration: 1.4s;
  animation-iteration-count: infinite;
  animation-timing-function: linear;
}
.round .arrow.primera {
  animation-name: bounceAlpha;
  animation-duration: 1.4s;
  animation-delay: 0.2s;
  animation-iteration-count: infinite;
  animation-timing-function: linear;
}

/* RESPONSIVE CSS */
@media (max-width: 767px) {
  .introContainer {
    height: 100vh;
    color: white;
    background-image: url('../assets/ep_naturalblack.png');
    animation: slide 40s linear infinite;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
  }
  .line-1, .line-2 {
    width: 10em;
    font-size: 1.2em;
  }
  .line-2 {
    width: 3em;
  }
}
</style>