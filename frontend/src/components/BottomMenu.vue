<template>
<nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item">
      <router-link :to="{name: 'Feedback'}">Contact us</router-link>
    </a>
    <a class="navbar-item">
      <a href="https://github.com/kburk1997/RelieveMe">GitHub</a>
    </a>
  </div>
</nav>
</template>

<script>
export default {
  name: 'BottomMenu'
}
</script>
