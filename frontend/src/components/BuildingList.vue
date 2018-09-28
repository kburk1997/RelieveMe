<template>
<div>
  <h1>All Buildings</h1>
  <table>
    <thead>
      <tr>
        <th>Name</th>
        <th>Abbreviation</th>
        <th>Region</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="building in buildings" :key="building.name">
        <td>
          <!-- TODO: have this link to the building once skeleton individual building plan fleshed out -->
          <a href='#'>{{building.name}}</a>
        </td>
        <td v-if="building.abbreviation">
          {{building.abbreviation}}
        </td>
        <td v-if="!building.abbreviation">
          None
        </td>
        <td>{{building.region}}</td>
      </tr>
    </tbody>
  </table>
</div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'BuildingList',
  data () {
    return {
      buildings: [],
      msg: 'Welcome to Your Vue.js App'
    }
  },
  methods: {
    getBuildingList: function () {
      axios
        .get(`/api/buildings?sort=None&filter=None&region=None`)
        .then(response => {
          // console.log(response);
          this.buildings = response.data
        })
        .catch(error => {
          console.error(error)
        })
    }
  },
  mounted: function () {
    this.getBuildingList()
  }
}
</script>

<style>
</style>
