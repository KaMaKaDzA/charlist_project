<template>
  <div id="header">
    <a href="/users/sign_out" v-if="user_id">
      <i class="fa fa-sign-out header-icon" aria-hidden="true"></i>
    </a>
    <a href="/users/sign_in" v-if="!user_id">
      <i class="fa fa-sign-in header-icon" aria-hidden="true"></i>
    </a>
    <a href="/user" v-if="user_id">
      <i class="fa fa-user-o header-icon" aria-hidden="true" v-if="user_id"></i>
    </a>
    <a href="/charlists" v-if="user_id">
      <i class="fa fa-id-card header-icon" aria-hidden="true" v-if="user_id"></i>
    </a>
    <i class="fa fa-weixin header-icon" aria-hidden="true" @click="showChat" v-if="user_id"></i>
  </div>
</template>

<script>
export default {
  props: ["user_id"],
  methods: {
    showChat() {
      this.$emit('showChat')
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

.header-icon {
  font-size: xxx-large;
  margin: 5px;
}

a:link, a:visited {
  color:inherit;
}
</style>