<template>
      <div class="charlist">
        <p class="charlist_name">{{ charlist_name }}</p>
        <img class="charlist_image"
             src="https://content.instructables.com/ORIG/F32/Y0FV/J8F5Q3W5/F32Y0FVJ8F5Q3W5.png?auto=webp&frame=1&width=1024&height=1024&fit=bounds&md=5a45ebe2850f9ab8d04792009d63d6a5">
      </div>
</template>

<script>
export default {
  props: ["charlist_name"]
};
</script>

<style>
.charlist_name {
  max-width: 8vw;
  align-self: start;
}

.charlist_image {
  width: 8vw;
  height: 18vh;
  align-self: start;
}
</style>