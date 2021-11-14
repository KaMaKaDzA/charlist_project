<template>
  <div id="base-container">
    <custom_header v-on:showChat="showChat" :user_id="user_id"></custom_header>
    <div id="content-container">
      <system_container :system_name="system_name" v-for="system in systems" :key="system"></system_container>
      <chat ref="chatContainer"></chat>
    </div>
  </div>
</template>

<script>
import custom_header from "../custom_header.vue";
import system_container from "./system_container.vue";
import chat from "../chat.vue";

export default {
  data() {
    return {
      system_name: 'DnD 5e',
      systems: [1, 2, 3]
    }
  },
  components: {
    system_container: system_container,
    custom_header: custom_header,
    chat: chat
  },
  props: ["charlists", "user_id"],
  methods: {
    showChat() {
      this.$refs.chatContainer.showChat()
    }
  }
};
</script>

<style>
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