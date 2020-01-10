<template>
    <div class="footer">
      <div class="rounded">

      </div>
        <div class="socialApps">
          <div>
            <a :href="socials.facebook">
              <Facebook />
            </a>
          </div>
          <div>
            <a :href="socials.linkedin">
              <Linkedin />
            </a>
          </div>
          <div>
            <a :href="socials.instagram">
              <Instagram />
            </a>
          </div>
        </div>
        <div class="createdBy">
            <p>Powered by <b>Znieczu</b> ©2020</p>
        </div>
    </div>
</template>
<script>
import Facebook from 'vue-material-design-icons/Facebook.vue';
import Linkedin from 'vue-material-design-icons/Linkedin.vue';
import Instagram from 'vue-material-design-icons/Instagram.vue';
import '../../static/animations.css'

export default {
    name: 'FooterBar',
    data() {
        return {
            socials: {
                linkedin: 'https://www.linkedin.com/in/tommaso-bellini-33a756113/',
                instagram: 'https://www.instagram.com/znieczu_is_back/?hl=it',
                facebook: 'https://www.facebook.com/tommaso.bellini.921?ref=bookmarks'
            }
        }
    },
    components: {
        Facebook,
        Linkedin,
        Instagram
    }
}
</script>
<style scoped>
    a {
        color: red;
    }
    .footer {
        position: relative;
        margin: 0;
        height: 3vw;
        width: 100%;
        background-color: grey;
        background-image: url('../assets/ep_naturalblack.png');
        animation: slide 40s linear infinite;
    }
    .rounded {
      position: absolute;
      z-index: 0;
      bottom: -30px;
      width: 100%;
      height: 250px;
      background-color: black;
      border-radius: 50% 50% 0 0;
      background-image: url('../assets/ep_naturalblack.png');
      animation: slide 40s linear infinite;
    }
    .socialApps {
        height: 100%;
        display: flex;
        margin-right: 25px;
        align-items: center;
        justify-content: space-around;
        font-size: 30px;
        color: white;
    }
    .socialApps div {
    }
    .material-design-icon {

    }
    .createdBy {
        position: relative;
        height: 2vw;
        background-image: url('../assets/ep_naturalblack.png');
        animation: slide 40s linear infinite;
        font-size: 14px;
        color: white;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    @media (max-width: 767px) {
         .footer {
            position: relative;
            bottom:0;
            left:0;
            height: 8vw;
        }
        .rounded {
          height: 120px;
          width: 100%;
          left: 0;
        }
         .createdBy {
            position: relative;
            height: 7vw;
            background-image: url('../assets/ep_naturalblack.png');
            animation: slide 40s linear infinite;
            font-size: 14px;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
        }
    }
</style>
