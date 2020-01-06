<template>
    <div class="footer">
        <div class="socialApps">
            <a :href="socials.facebook">
                <Facebook />
            </a>
            <a :href="socials.linkedin">
                <Linkedin />
            </a>
            <a :href="socials.instagram">
                <Instagram />
            </a>
        </div>
        <div class="createdBy">
            <p>Powered by Znieczu</p>
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
    .socialApps {
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: space-around;
        font-size: 20px;
        color: white;
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