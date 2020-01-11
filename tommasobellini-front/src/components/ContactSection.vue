<template>
  <div class="contact">
    <div class="contactContainer">
      <h2>Do you need some info?</h2>
      <h2>Feel free to contact me!</h2>
      <div class="socialApps">
        <div>
            <a :href="socials.email">
              <Email />
              <a class="link">info@tommasobellini.it</a>
            </a>
          </div>
          <div>
            <a :href="socials.facebook">
              <Facebook />
            </a>
            <a class="link">tommaso.bellini.921</a>

          </div>
          <div>
            <a :href="socials.linkedin">
              <Linkedin />
            </a>
            <a class="link">tommaso-bellini-33a756113</a>

          </div>
          <div>
            <a :href="socials.instagram">
              <Instagram />
            </a>
            <a class="link">znieczu_is_back</a>
          </div>
        </div>
    </div>
  </div>
</template>

<script>
import Facebook from 'vue-material-design-icons/Facebook.vue';
import Linkedin from 'vue-material-design-icons/Linkedin.vue';
import Instagram from 'vue-material-design-icons/Instagram.vue';
import Email from 'vue-material-design-icons/Email.vue';
    export default {
        name: 'ContactSection',
         data() {
            return {
                socials: {
                    linkedin: 'https://www.linkedin.com/in/tommaso-bellini-33a756113/',
                    instagram: 'https://www.instagram.com/znieczu_is_back/?hl=it',
                    facebook: 'https://www.facebook.com/tommaso.bellini.921?ref=bookmarks',
                    email: 'info@tommasobellini.it'
                }
            }
        },
        components: {
            Facebook,
            Linkedin,
            Instagram,
            Email
        }
    }
</script>

<style scoped>
    a {
        color:slateblue;
    }
  .contact {
    width: 100%;
    height: 100vh;
    background-color: lavender;
    color: purple;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    border-radius: 50% 0 50%;
  }
    .contactContainer {
      transform: translateY(-7vw);
    }
    .socialApps {
        height: 100%;
        display: flex;
        flex-direction: column;
        margin-right: 25px;
        align-items: center;
        justify-content: space-around;
        font-size: 30px;
        color: purple;
    }
    .link {
      font-size: 20px;
    }
  @media (max-width: 767px) {
    .contact {
      height: 100vh;
      border-radius: 0;
    }
  }
</style>
