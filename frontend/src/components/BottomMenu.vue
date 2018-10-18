<template>
<footer class="footer">
  <div class="container">
    <nav class="level">
      <div class="level-left">
  <p><router-link :to="{name: 'Feedback'}"><b-icon pack="fas" icon="envelope" size="is-small"></b-icon> &nbsp; Contact us</router-link> &nbsp;
  <a target="_blank" href="https://github.com/kburk1997/RelieveMe">
  <b-icon pack="fab" icon="github" size="is-small"></b-icon> &nbsp;
  GitHub</a></p>
  </div>
  </nav>
</div>
</footer>
<!---->
</template>

<script>
export default {
  name: 'BottomMenu'
}
</script>

<style scoped>
.bottommenu {
  overflow: hidden;
  position: fixed;
  bottom: 0;
}
</style>
