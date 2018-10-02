<template>
  <div id ="building-floor-plan">
    <h1 class="title is-2">{{$route.params.name}} Floor Plan</h1>

    <div v-for="floor in floors" v-bind:key="floor">
      <h2 class="subtitle is-3">Floor {{floor.name}} <a v-bind:href="floor.link"> link </a> </h2>

      </div>
  </div>
</template>

<script>
export default {
  name: 'BuildingFloorPlans',
  data () {
    return {
      floors: [
        {name: '1', link: 'http://zim2411.info/floorplans/Union1.pdf'},
        {name: '2', link: 'http://zim2411.info/floorplans/Union2.pdf'},
        {name: '3', link: 'http://zim2411.info/floorplans/Union3.pdf'}
      ]
    }
  }

}
</script>

<style>
</style>
