<template>
<nav class="navbar" role="navigation" aria-label="main navigation">
  <router-link class="navbar-item" :to="{name: 'Feedback'}">Contact us</router-link>
  <a class="navbar-item" target="_blank" href="https://github.com/kburk1997/RelieveMe">GitHub</a>
</nav>
</template>

<script>
export default {
  name: 'BottomMenu'
}
</script>
