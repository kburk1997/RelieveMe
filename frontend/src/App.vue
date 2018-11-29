<template>
    <div class="app" id="app">
      <top-menu></top-menu>
      <div class="wrapper" id="main">
        <section class="section">
          <div class="container">
            <!--<img src="./assets/logo.png">-->
            <router-view/>
          </div>
        </section>
        <div class="push"></div>
      </div>
      <bottom-menu class="footer"></bottom-menu>
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

<style lang="scss">
@import '~bulma/sass/utilities/_all';

@import url('https://fonts.googleapis.com/css?family=Nunito:400,700');
$family-sans-serif: 'Nunito', sans-serif;

@import '~bulma';
@import '~buefy/src/scss/buefy';

$primary: #207e5f;
$primary-invert: findColorInvert($primary);

$link: #006699;

// Setup $colors to use as bulma classes (e.g. 'is-twitter')
$colors: (
  'white': (
    $white,
    $black
  ),
  'black': (
    $black,
    $white
  ),
  'light': (
    $light,
    $light-invert
  ),
  'dark': (
    $dark,
    $dark-invert
  ),
  'primary': (
    $primary,
    $primary-invert
  ),
  'info': (
    $info,
    $info-invert
  ),
  'success': (
    $success,
    $success-invert
  ),
  'warning': (
    $warning,
    $warning-invert
  ),
  'danger': (
    $danger,
    $danger-invert
  )
);

#app {
  font-family: $family-sans-serif, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
// Links
$link: $primary;
$link-invert: $primary-invert;
$link-focus-border: $primary;

@import '~bulma';
@import '~buefy/src/scss/buefy';

html, body {
  height: 100%;
  margin: 0;
}
.app {
  height: 100%;
  margin: 0;
}

</style>
<style scoped>
  .wrapper {
    min-height: 100%;

    /* Equal to height of footer */
    /* But also accounting for potential margin-bottom of last child */
    margin-bottom: -50px;
  }
  .footer {
    height: 20%;
  }
  .push {
    height: 50px;
  }
</style>
