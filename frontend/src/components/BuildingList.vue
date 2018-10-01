<template>
<div id="building-list">
  <h1 class="title is-2">All Buildings</h1>
  <b-table :data="buildings"
  :loading="loading"
  paginated
        per-page="10"
        :default-sort-direction="asc"
         default-sort="name"
  >
  <template slot-scope="buildings">
      <b-table-column field="name" label ="Name" sortable>
        <router-link :to="{name: 'Building', params:{name: buildings.row.name}}">
        {{buildings.row.name}}</router-link></b-table-column>
      <b-table-column field="abbreviation" label ="Abbreviation" sortable>{{buildings.row.abbreviation}}</b-table-column>
      <b-table-column field="region" label ="Region" sortable>{{buildings.row.region}}</b-table-column>
  </template>

  </b-table>
</div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'BuildingList',
  data () {
    return {
      buildings: [],
      columns: [{
        field: 'name',
        label: 'Name'
      },
      {
        field: 'abbreviation',
        label: 'Abbreviation'
      },
      {
        field: 'region',
        label: 'Region'
      }],
      loading: false
    }
  },
  methods: {
    getBuildingList: function () {
      this.loading = true
      axios
        .get(`/api/buildings?sort=None&filter=None&region=None`)
        .then(response => {
          this.loading = false
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
