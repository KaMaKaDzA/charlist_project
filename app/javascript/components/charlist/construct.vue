<template>
  <div id="base-container">
    <custom_header v-on:showChat="showChat" :user_id="user_id"></custom_header>
    <div id="content-container">
      <img class="charlist-page" src="https://cs10.pikabu.ru/post_img/big/2018/04/06/7/1523011221122364841.png">
      <img class="charlist-page" src="https://cs8.pikabu.ru/post_img/big/2018/04/06/7/1523011276120399516.png">
      <img class="charlist-page" src="https://cs10.pikabu.ru/post_img/big/2018/04/06/7/1523011280147154473.png">
      <input class="hidden-input" id="name" type="text" v-model="name">
      <input class="hidden-input" id="strength" type="text" v-model="strength">
      <a href="" id="save_btn">Save</a>
      <chat ref="chatContainer"></chat>
    </div>
  </div>
</template>

<script>
import custom_header from "../custom_header.vue";
import chat from "../chat.vue";

export default {
  data() {
    return {
    }
  },
  components: {
    custom_header: custom_header,
    chat: chat
  },
  props: ["user_id"],
  methods: {
    showChat() {
      this.$refs.chatContainer.showChat()
    }
  }
};
</script>

<style>
#save_btn{
  background-color: #608cff;
  border-style: inset;
  border-color: black;
  border-radius: 6px;
  padding: 1vh 1vw 1vh 1vw;
  text-decoration: none;
  color: #ebf6ff;
  position: fixed;
  left: 93vw;
  top: 91vh;
}

.hidden-input {
  position: absolute;
  border: none;
}

#name {
  margin-top: 14vh;
  margin-right: 34vw;
  width: 22vw;
  height: 4vh;
}

.charlist-page {
  width: 65vw;
  height: 170vh;
  margin-bottom: 5vh;
}

div#content-container {
  order: 2;
  flex-grow: 5;
  background-color: #90b0ff;
  display: flex;
  flex-direction: column;
  align-items: center;
  min-height: 92vh;
}

body {
  overflow-x: hidden;
  -ms-overflow-style: none; /* IE and Edge */
  scrollbar-width: none; /* Firefox */
}

/* Hide scrollbar for Chrome, Safari and Opera */
body::-webkit-scrollbar {
  display: none;
}
</style>