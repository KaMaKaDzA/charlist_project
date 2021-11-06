<template>
  <div ref="chatContainer" id="chat-container" v-show="isShown">
    <div id="chat-header" @mousedown="dragMouseDown">
      <i class="fa fa-backward m-icon" @click="prevPage"></i>
      <div id="channel-container">
        <div class="channel"  v-for="channel in paginatedChannels">
          <p class="channel-name">{{channel.channel_name}}</p>
          <i class="fa fa-window-close small-close" v-on:click="closeChannel(channel.channel_id)"></i>
        </div>
      </div>
      <i class="fa fa-forward m-icon" @click="nextPage"></i>
      <i class="fa fa-window-close m-icon" @click="hideChat"></i>
    </div>
    <div id="chat-body">
      <div class="message_box"></div>
    </div>
    <div id="chat-input">
      <textarea id="text-input" v-model="new_message" placeholder="Введите сообщение" ></textarea>
      <i class="fa fa-paper-plane" aria-hidden="true" id="send-icon" v-on:click="sendMessage"></i>
    </div>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      positions: {
        clientX: undefined,
        clientY: undefined,
        movementX: 0,
        movementY: 0
      },
      new_message: '',
      channels: [{channel_name: 'Test1', channel_id: 1}, {channel_name: 'Test2', channel_id: 2}, {
        channel_name: 'Test3',
        channel_id: 3
      }],
      pageNumber: 0,
      size: 2,
      isShown: false
    }
  },
  methods: {
    dragMouseDown: function (event) {
      event.preventDefault()
      // get the mouse cursor position at startup:
      this.positions.clientX = event.clientX
      this.positions.clientY = event.clientY
      document.onmousemove = this.elementDrag
      document.onmouseup = this.closeDragElement
    },
    elementDrag: function (event) {
      event.preventDefault()
      this.positions.movementX = this.positions.clientX - event.clientX
      this.positions.movementY = this.positions.clientY - event.clientY
      this.positions.clientX = event.clientX
      this.positions.clientY = event.clientY
      // set the element's new position:
      this.$refs.chatContainer.style.top = (this.$refs.chatContainer.offsetTop - this.positions.movementY) + 'px'
      this.$refs.chatContainer.style.left = (this.$refs.chatContainer.offsetLeft - this.positions.movementX) + 'px'
    },
    closeDragElement() {
      document.onmouseup = null
      document.onmousemove = null
    },
    sendMessage() {
      console.log('it\'s alive!')
    },
    closeChannel(channel_id) {
      console.log('channel ' + channel_id + ' should be closed!')
    },
    nextPage() {
      if (this.pageNumber <= Math.ceil(this.channels.length / this.size) - 1) {
        this.pageNumber++;
      }
    },
    prevPage() {
      if (this.pageNumber > 0) {
        this.pageNumber--;
      }
    },
    hideChat(){
      this.isShown = false;
    },
    showChat(){
      this.isShown = true;
    }
  },
  computed: {
    pageCount() {
      let l = this.channels.length,
          s = this.size;
      return Math.ceil(l / s);
    },
    paginatedChannels() {
      const start = this.pageNumber * this.size, end = start + this.size;
      return this.channels.slice(start, end);
    }
  },
}
</script>

<style>
  div#chat-container{
    width: 20vw;
    height: 25vw;
    display: flex;
    flex-direction: column;
    border-color: #454545;
    border-radius: 5px;
    border-style: inset;
    position: fixed;
    left: 79vw;
    top: 50vh;
  }

  div#chat-header{
    order: 1;
    flex-grow: 1;
    background-color: #608cff;
    border-color: #454545;
    border-style: inset;
    display: flex;
    flex-direction: row;
    align-items: flex-start;
  }

  div#chat-body{
    order: 2;
    flex-grow: 25;
    background-color: #ebf6ff;
    border-color: #454545;
    border-style: inset;
  }

  div#chat-input{
    order: 3;
    flex-grow: 3;
    border-color: #454545;
    border-style: inset;
    display: flex;
    flex-direction: row;
    background-color: #90b0ff;
  }

  #text-input{
    order: 1;
    background-color: #90b0ff;
    font-size: 18px;
    resize: none;
    flex-grow: 8;
  }

  .fa-paper-plane{
    order: 2;
    font-size: xx-large;
    flex-grow: 2;
    align-self: center;
  }

  .m-icon{
    font-size: medium;
    flex-grow: 1;
    align-self: center;
  }

  .channel{
    display: flex;
    flex-direction: row;
    flex-grow: 1;
    max-width: 50%;
  }

  #channel-container{
    display: flex;
    flex-direction: row;
    flex-grow: 15;
    align-self: center;
  }

  .channel-name{
    order: 1;
    flex-grow: 8;
    margin: 0;
    padding-right: 3px;
  }

  .small-close{
    order: 2;
    flex-grow: 2;
    margin-right: 2px;
    font-size: small;
    margin-left: auto;
  }

  .fa-window-close.m-icon{
    width: 3%;
  }
</style>