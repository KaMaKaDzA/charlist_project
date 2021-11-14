<template>
  <div id="base-container">
    <custom_header v-on:showChat="showChat" :user_id="user_id"></custom_header>
    <div id="content-container">
      <div id="main-content">
        <user_article v-for="article in articles" :key="article"></user_article>
      </div>
      <chat ref="chatContainer"></chat>
    </div>
  </div>
</template>

<script>
import chat from "./chat.vue";
import user_article from "./user_article.vue";
import custom_header from "./custom_header.vue";
export default {
  data() {
    return {
      articles: [1, 2, 3]
    }
  },
  components: {
    chat: chat,
    user_article: user_article,
    custom_header: custom_header
  },
  props: ["user_id"],
  methods: {
    showChat(){
      this.$refs.chatContainer.showChat()
    }
  }
};
</script>

<style>
div#main-content {
  order: 2;
  flex-grow: 5;
  background-color: #90b0ff;
  display: flex;
  flex-direction: column;
  align-items: center;
  min-height: 92vh;
}

div#content-container{
  display: flex;
  flex-direction: row;
  width: 100vw;
}


body {
  overflow-x: hidden;
  -ms-overflow-style: none;  /* IE and Edge */
  scrollbar-width: none;  /* Firefox */
}

/* Hide scrollbar for Chrome, Safari and Opera */
body::-webkit-scrollbar {
  display: none;
}
</style>