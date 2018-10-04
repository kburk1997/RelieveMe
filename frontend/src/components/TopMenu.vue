<template>
<nav class="navbar" role="navigation" aria-label="main navigation">
  <router-link class="navbar-item" :to="{name: 'HelloWorld'}">Home</router-link>
  <router-link class="navbar-item" :to="{name: 'Feedback'}">Report a problem</router-link>
  <search-bar></search-bar>
</nav>
</template>

<script>
import SearchBar from './SearchBar.vue'
export default {
  name: 'TopMenu',
  components: {
    SearchBar
  }
}
</script>
