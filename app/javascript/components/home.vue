<template>
  <div id="base-container">
    <div id="header">
      <i class="fa fa-sign-in header-icon" aria-hidden="true"></i>
      <i class="fa fa-user-o header-icon" aria-hidden="true"></i>
      <i class="fa fa-cog header-icon" aria-hidden="true"></i>
      <i class="fa fa-weixin header-icon" aria-hidden="true" @click="showChat"></i>
    </div>
    <div id="content-container">
      <div id="main-content">
        <user_article></user_article>
        <user_article></user_article>
      </div>
      <chat ref="chatContainer"></chat>
    </div>
  </div>
</template>

<script>
import chat from "./chat.vue";
import user_article from "./user_article.vue";
export default {
  components: {
    chat: chat,
    user_article: user_article
  },
  methods: {
  showChat(){
    this.$refs.chatContainer.showChat()
  }
  }
};
</script>

<style>
  div#header {
    height: 8vh;
    background-color: #608cff;
    width: 100vw;
    display: flex;
    flex-direction: row-reverse;
    align-items: center;
  }

  div#main-content {
    order: 2;
    flex-grow: 5;
    background-color: #90b0ff;
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  div#content-container{
    display: flex;
    flex-direction: row;
    width: 100vw;
  }

  .header-icon{
    font-size: xxx-large;
    margin: 5px;
  }

  body {
    overflow-x: hidden;
  }
</style>