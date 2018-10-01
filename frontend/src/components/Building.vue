<template>
  <div id ="building">
    <h1 class="title is-2">{{$route.params.name}}</h1>
    <router-link :to="{name: 'BuildingFloorPlans'}">Floor Plans</router-link>

    <div v-for="floor in floors" v-bind:key="floor">
      <h2 class="subtitle is-3">Floor {{floor}} </h2>

      </div>
  </div>
</template>

<script>
export default {
  name: 'Building',
  data () {
    return {
      name: '',
      floors: ['1', '2', '3'] // TODO get rid of hardcoded floors
    }
  }

}
</script>

<style>
</style>
