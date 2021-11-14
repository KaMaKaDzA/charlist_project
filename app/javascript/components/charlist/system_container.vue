<template>
  <div class="system_container">
    <div class="system_header_container">
      <h2 class="system_header">{{ system_name }}</h2>
      <a class="create_btn" href="/charlists/new/construct">Create new</a>
    </div>
    <div class="charlists_container">
      <charlist :name="charlist_name" v-for="charlist in charlists"></charlist>
    </div>
  </div>
</template>

<script>
import charlist from "./charlist.vue";

export default {
  data() {
    return {
      charlist_name: 'Test charlist name',
      charlists: [1, 2, 3, 4, 5, 6]
    }
  },
  components: {
    charlist: charlist
  },
  props: ["system_name"]
};
</script>

<style>
.create_btn {
  background-color: #608cff;
  border-style: inset;
  border-color: black;
  border-radius: 6px;
  padding: 0.4vw;
  margin-top: 1.2em;
  margin-bottom: 1.2em;
  text-decoration: none;
  color: #ebf6ff;
  margin-left: 55vw;

}

.system_header_container {
  display: flex;
  flex-direction: row;
  border-bottom-color: black;
  border-bottom-style: solid;
  width: 65vw;
}

.system_container {
  display: flex;
  flex-direction: column;
  padding: 2% 5% 2% 5%;
  align-items: start;
  width: 65vw;
  background-color: white;
  margin-top: 2%;
  height: 70vh;
}

.charlists_container {
  display: flex;
  flex-direction: row;
}
</style>