<template>
  <div id ="building-floor-plan">
    <h1 class="title is-2">{{$route.params.name}} Floor Plan</h1>

    <div v-for="plan in plans" v-bind:key="plan.floorNumber">
      <h2 class="subtitle is-3">
        Floor {{plan.floorNumber}}  <a v-bind:href="plan.link">link </a>
      </h2>
    </div>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'BuildingFloorPlans',
  data () {
    return {
      plans: []
    }
  },
  methods: {
    getFloorPlans: function () {
      axios
        .get('/api/' + this.$route.params.name + '/floorplans')
        .then(response => {
          //console.log(response)
          this.plans = response.data
        })
        .catch(error => {
          //console.error(error)
        })
    }
  },
  mounted: function () {
    this.getFloorPlans()
  }
}
</script>

<style>
</style>
