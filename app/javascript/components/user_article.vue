<template>
  <div class="article-container">
    <h1 class="article-header">Test article header</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sollicitudin felis ipsum, a scelerisque quam maximus vitae.
      Phasellus scelerisque, neque vitae lacinia fringilla, dolor odio interdum velit, eget placerat orci ligula nec augue.
      uis fermentum ultricies ante, non elementum dolor commodo ac. Class aptent taciti sociosqu ad litora torquent per
      conubia nostra, per inceptos himenaeos. Sed vitae nibh magna. In non purus mauris. Phasellus bibendum orci ac ante
      euismod aliquam. Nulla a varius libero. Aliquam erat volutpat. Nullam in metus mi. Etiam molestie, sem sed blandit
      maximus, erat urna finibus lacus, sit amet varius est turpis quis lectus. Suspendisse vitae rhoncus ipsum.
      Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce hendrerit
      erat sit amet purus tempus, vitae fermentum magna gravida. Praesent laoreet nibh quis quam fermentum ullamcorper.
      Suspendisse vel lectus id sapien convallis condimentum.</p>
    <img src="https://assets1.ignimgs.com/2021/03/03/pokemondnd-br-1614801359035.png">
  </div>
</template>

<script>
export default {
  name: "article"
}
</script>

<style scoped>
  .article-container{
    display: flex;
    flex-direction: column;
    padding: 5%;
    align-items: center;
    width: 65%;
    background-color: white;
    margin-top: 2%;
  }

  .article-header{
    order: 1;
    margin-bottom: 5%;
  }

  img{
    order: 3;
    max-width: 80%;
    max-height: 80%;
  }

  p{
    order: 2;
  }
</style>