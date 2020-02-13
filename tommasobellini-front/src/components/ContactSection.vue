<template>
  <div class="contact">
    <div class="contactContainer">
      <h2>Do you need any information?</h2>
      <h2>Feel free to contact me!</h2>

      <div class="socialApps">
        <table>
          <tr>
            <th>
              <a :href="socials.email">
                <Email />
              </a>
            </th>
            <th>
              <a class="link">info@tommasobellini.it</a>
            </th>
          </tr>
          <tr>
            <th>
              <a :href="socials.facebook">
              <Facebook />
            </a>
            </th>
            <th>
            <a class="link">tommaso.bellini.921</a>
            </th>
          </tr>
          <tr>
            <th>
              <a :href="socials.facebook">
              <Linkedin />
            </a>
            </th>
            <th>
            <a class="link">tommaso-bellini-33a756113</a>
            </th>
          </tr>
          <tr>
            <th>
              <a :href="socials.facebook">
              <Instagram />
            </a>
            </th>
            <th>
              <a class="link">znieczu_is_back</a>
            </th>
          </tr>
        </table>
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
    a:hover {
      color: red;
      cursor: pointer;
    }
    table {
      border-collapse: collapse;
      width: 100%;
      text-align: left;
    }
    tr, th {
      margin: 10px;
    }
    th {
      height: 50px;
      padding: 5px;
    }
    th:nth-child(2) {
      display: flex;
      align-items: center;
    }
    th:nth-child(2) a{
      font-size: 15px;

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
      padding: 30px;
    }
  }
</style>
