<template>
  <nav class="navbar is-fixed-top is-primary" role="navigation" aria-label="main navigation">
    <div class="container">
      <div class="navbar-brand">
        <router-link class="navbar-item" :to="{name: 'HelloWorld'}">
          <img src="../assets/logo-faucet-white.png"> &nbsp; RelieveMe
        </router-link>
        <router-link class="navbar-item" :to="{name: 'BuildingList'}">Buildings</router-link>
        <router-link class="navbar-item" :to="{name: 'Feedback'}">Send Feedback</router-link>
        <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false">
          <span aria-hidden="true"></span>
          <span aria-hidden="true"></span>
          <span aria-hidden="true"></span>
        </a>
      </div>
      <div class="navbar-menu">
        <div class="navbar-end">
          <div class="navbar-item">
            <search-bar></search-bar>
          </div>
        </div>
      </div>
    </div>
  </nav>
</template>

<script>
// eslint-disable-next-line
import SearchBar from "./SearchBar.vue";
export default {
  // eslint-disable-next-line
  name: "TopMenu",
  components: {
    SearchBar
  }
  // eslint-disable-next-line
};
</script>
