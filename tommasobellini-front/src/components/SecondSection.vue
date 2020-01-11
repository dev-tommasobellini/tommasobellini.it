<template>
  <div class="secondSectionContainer">
    <div class="title">
      <h2>About me</h2>
    </div>
    <div class="profile">
      <img class="profileImg" src="../assets/MyProfilePhoto.jpeg" />
    </div>
    <div class="chat">
      <div class="yours messages">
        <div class="message last">
            <h4>Personal</h4>
            <p>
                Hi, I'm Tommaso and i'm 22 years old.
                I live in Italy, more specifically near Bergamo.
                I was born in Warsaw (Poland) and i was adopted when i was 5 years old by two italians.
            </p>
        </div>
      </div>
      <div style="height: 75px; width:0; border: dotted 2px #eee;"></div>
      <div class="yours messages">
        <div class="message last">
            <h4>School studies and work</h4>
             <p>
                Hi, I'm Tommaso and i'm 22 years old.
                I live in Italy, more specifically near Bergamo.
                I was born in Warsaw (Poland) and i was adopted when i was 5 years old by two italians.
            </p>
        </div>
      </div>
      <div style="height: 75px; width:0; border: dotted 2px #eee;"></div>
      <div class="yours messages">
        <div class="message last">
            <h4>Future goals</h4>
             <p>
                Hi, I'm Tommaso and i'm 22 years old.
                I live in Italy, more specifically near Bergamo.
                I was born in Warsaw (Poland) and i was adopted when i was 5 years old by two italians.
            </p>
        </div>
      </div>
    </div>
    <!-- <div class="stories">
      <div class="borderLeft">
        <h4>My personal Story</h4>
        <p>
          Hi, I'm Tommaso and i'm 22 years old.
          I live in Italy, more specifically near Bergamo.
          I was born in Warsaw (Poland) and i was adopted when i was 5 years old by two italians.
        </p>
      </div>
      <div class="textAlignRight borderTop borderRight">
        <h4>My school studies and work Story</h4>
        <p>
          Hi, I'm Tommaso and i'm 22 years old.
          I live in Italy, more specifically near Bergamo.
          I was born in Warsaw (Poland) and i was adopted when i was 5 years old by two italians.
        </p>
      </div>
      <div class="borderTop borderLeft">
        <h4>My future goals Story</h4>
        <p>
          Hi, I'm Tommaso and i'm 22 years old.
          I live in Italy, more specifically near Bergamo.
          I was born in Warsaw (Poland) and i was adopted when i was 5 years old by two italians.
        </p>
      </div>
    </div> -->
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
h1, h2, h3, h4 {
  text-transform: uppercase;
  letter-spacing: 5px;
}
.secondSectionContainer {
  min-height: 70vh;
  margin: 120px 250px;
}
.profile {
  height: 300px;
  width: 300px;
  margin: auto;
}
.profileImg {
  border-radius: 25px;
  height: 300px;
  width: 300px;
}
.title {
  display: flex;
  justify-content: center;
  text-transform: uppercase;
  letter-spacing: 5px;
}
.stories div {
  padding: 50px;
}
.textAlignRight {
  text-align: right;
}
.borderLeft {
  border-left: dashed 1px grey;
  border-radius: 20px;
}
.borderRight {
  border-right: dashed 1px grey;
  border-radius: 20px;
}
.borderTop {
  border-top: dashed 1px grey;
  border-radius: 20px;
}
.borderBottom {
  border-bottom: dashed 1px grey;
  border-radius: 20px;
}
/* IPHONE MESSAGES CSS */

.chat {
  width: 90%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-around;
  padding: 10px;
  margin: auto;
  margin-top: 100px;
}

.messages {
  display: flex;
  flex-direction: column;
}

.message {
  border-radius: 20px;
  padding: 8px 15px;
  margin-top: 5px;
  margin-bottom: 5px;
  display: inline-block;
  box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.3);
}

.yours {
  align-items: center;
}

.yours .message {
  background-color: #eee;
  position: relative;
  text-align: center;
}


.mine {
  align-items: flex-end;
}

.mine .message {
  color: white;
  margin-left: 25%;
  background: linear-gradient(to bottom, #00d0ea 0%, #0085d1 100%);
  background-attachment: fixed;
  position: relative;
}

.mine .message.last:before {
  content: "";
  position: absolute;
  z-index: 0;
  bottom: 0;
  right: -8px;
  height: 20px;
  width: 20px;
  background: linear-gradient(to bottom, #00d0ea 0%, #0085d1 100%);
  background-attachment: fixed;
  border-bottom-left-radius: 15px;
}

.mine .message.last:after {
  content: "";
  position: absolute;
  z-index: 1;
  bottom: 0;
  right: -10px;
  width: 10px;
  height: 20px;
  background: white;
  border-bottom-left-radius: 10px;
}

/* RESPONSIVE */
@media (max-width: 767px) {
  .secondSectionContainer {
    min-height: 70vh;
    margin: 0;
  }
  .profile {
    height: 300px;
    width: 300px;
    margin: auto;
  }
  .profileImg {
    border-radius: 25px;
    height: 300px;
    width: 300px;
  }
}
</style>
