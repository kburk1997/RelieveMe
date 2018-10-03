<template>
  <div id="app">
    <top-menu></top-menu>
    <section>
      <div class="container">
    <!--<img src="./assets/logo.png">-->
    <router-view/>
    </div>
    </section>
    <bottom-menu></bottom-menu>
  </div>
</template>

<script>
import TopMenu from './components/TopMenu.vue'
import BottomMenu from './components/BottomMenu.vue'
export default {
  name: 'App',
  components: {
    TopMenu,
    BottomMenu
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
