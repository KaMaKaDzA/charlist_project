<template>
  <div id="base-container">
    <div id="header"> </div>
    <div id="content-container">
      <div id="left-sidebar"> </div>
      <div id="main-content"> </div>
      <div id="right-sidebar"> </div>
      <chat></chat>
    </div>
  </div>
</template>

<script>
import chat from "./chat.vue";
export default {
  components: {
    chat: chat
  }
};
</script>

<style>
  div#header {
    height: 8vh;
    background-color: #608cff;
    width: 100vw;
  }

  div#left-sidebar {
    order: 1;
    flex-grow: 1;
    background-color: #ebf6ff;
  }

  div#main-content {
    order: 2;
    flex-grow: 5;
    background-color: #90b0ff;
  }

  div#right-sidebar {
    order: 3;
    flex-grow: 1;
    background-color: #ebf6ff;
  }

  div#content-container{
    display: flex;
    flex-direction: row;
    width: 100vw;
    height: 100vh;
  }
</style>