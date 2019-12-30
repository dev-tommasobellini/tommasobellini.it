<template>
    <div class="secondSectionContainer">
        <div class="title">
            <h2>About me</h2>
        </div>
        <div class="profile">
            <img class="profileImg" src="../assets/MyProfilePhoto.jpeg"/>
        </div>
        <div class="stories">
            <div class="borderLeft borderBottom">
                <h4>My personal Story</h4>
                <p>
                    Hi, I'm Tommaso and i'm 22 years old.
                    I live in Italy, more specifically near Bergamo.
                    I was born in Warsaw (Poland) and i was adopted when i was 5 years old by two italians.
                </p>
            </div>
            <div class="textAlignRight borderRight borderBottom">
                <h4>My school studies and work Story</h4>
                <p>
                    Hi, I'm Tommaso and i'm 22 years old.
                    I live in Italy, more specifically near Bergamo.
                    I was born in Warsaw (Poland) and i was adopted when i was 5 years old by two italians.
                </p>
            </div>
             <div class="borderLeft borderBottom">
                <h4>My future goals Story</h4>
                <p>
                    Hi, I'm Tommaso and i'm 22 years old.
                    I live in Italy, more specifically near Bergamo.
                    I was born in Warsaw (Poland) and i was adopted when i was 5 years old by two italians.
                </p>
            </div>
        </div>
    </div>
</template>

<script>
export default {
  name: "SecondSection",
  data() {
    return {};
  }
};
</script>
<style scoped>
    .secondSectionContainer {
        min-height: 70vh;
        margin: 30px 300px;
    }
    .profile {
        height: 300px;
        width: 300px;
        margin:auto;
    }
    .profileImg {
        border-radius: 25px;
        height: 300px;
        width: 300px;
    }
    .title {
        display: flex;
        justify-content: center;
    }
    .stories div {
        padding: 50px;
    }
    .textAlignRight {
        text-align: right;
    }
    .borderLeft {
        border-left: dashed 1px grey;
    }
    .borderRight {
        border-right: dashed 1px grey;
    }
    .borderTop {
        border-top: dashed 1px grey;
    }
    .borderBottom {
        border-bottom: dashed 1px grey;
    }
</style>