<template>
  <div class="hello">
    <div>
      <div class="columns is-centered" style="margin-bottom: 0px !important;">
        <div class="column" style="margin-bottom: 0px !important;"></div>
        <div
          class="column is-offset-4-mobile is-one-third-mobile is-one-quarter-tablet is-one-fifth-desktop is-2-widescreen is-2-fullhd"
          style="margin-bottom: 0px !important;"
        >
          <figure class="image is-square">
            <img src="../assets/logo-faucet.png" align="middle" alt="RelieveMe logo">
          </figure>
        </div>
        <div class="column" style="margin-bottom: 0px !important;"></div>
      </div>
      <h1 class="relieveme-title title is-1">RelieveMe</h1>
    </div>
    <search-bar class="halfwidth"></search-bar>
  </div>
</template>

<script>
// eslint-disable-next-line
import SearchBar from "./SearchBar.vue";
export default {
  // eslint-disable-next-line
  name: "HelloWorld",
  components: {
    SearchBar
  }
  // eslint-disable-next-line
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.halfwidth {
  width: 70%;
  display: inline-block;
}
h1,
h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
.relieveme-title {
  font-size: 60px;
  margin-bottom: 12px;
}
@media only screen and (min-width: 768) and (max-width: 1024px) {
  .relieveme-title {
    font-size: 52px;
    margin-bottom: 11px;
  }
}
@media only screen and (max-width: 767px) {
  .relieveme-title {
    font-size: 45px;
    margin-bottom: 10px;
  }
}
</style>
