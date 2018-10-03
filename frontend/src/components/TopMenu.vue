<template>
<nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item">
      <router-link :to="{name: 'HelloWorld'}">Home</router-link>
    </a>
    <a class="navbar-item">
      <router-link :to="{name: 'Feedback'}">Report a problem</router-link>
    </a>
    <a class="navbar-item">
      <input type="text" v-model="search" placeholder="search buildings"/>
    </a>
  </div>
</nav>
</template>

<script>
export default {
  name: 'TopMenu'
}
</script>
