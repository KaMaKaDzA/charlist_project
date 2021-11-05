<template>
  <div ref="chatContainer" id="chat-container">
    <div id="chat-header" @mousedown="dragMouseDown"></div>
    <div id="chat-body">
      <div class="message_box"></div>
    </div>
    <div id="chat-input"></div>
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
      }
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
    closeDragElement () {
      document.onmouseup = null
      document.onmousemove = null
    }
  }
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
    position: absolute;
  }

  div#chat-header{
    order: 1;
    flex-grow: 1;
    background-color: #608cff;
    border-color: #454545;
    border-style: inset;
  }

  div#chat-body{
    order: 2;
    flex-grow: 10;
    background-color: #ebf6ff;
    border-color: #454545;
    border-style: inset;
  }

  div#chat-input{
    order: 3;
    flex-grow: 1;
    background-color: #90b0ff;
    border-color: #454545;
    border-style: inset;
  }

  div.message_box{

  }
</style>