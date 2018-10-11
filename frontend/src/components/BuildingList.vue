<template>
  <div class="columns">
    <div class="column is-2" id="filter-sidebar">
      <b-field class="left" label="Filter by region:">
        <b-select @input="calculateFilters()" v-model="filters.selectedRegionId" placeholder="Select a region">
          <option
            v-for="region in regions"
            :value="region.regionId"
            :key="region.regionId"
            >
            {{region.name}}
          </option>
        </b-select>
      </b-field>
    </div>

    <div class="column is-10" id="building-list">
      <h1 class="title is-2">All Buildings</h1>
      <b-table :data="filteredBuildings"
               :loading="loading"
               paginated
               per-page="10"
               default-sort="name"
      >
        <template slot-scope="filteredBuildings">
          <b-table-column field="name" label ="Name" sortable>
            <router-link :to="{name: 'Building', params:{name: filteredBuildings.row.properName}}">
              {{filteredBuildings.row.properName}}
            </router-link>
          </b-table-column>
          <b-table-column field="region.name" label ="Region" sortable>
            {{filteredBuildings.row.region.name}}
          </b-table-column>
        </template>
      </b-table>
    </div>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'BuildingList',
  data () {
    return {
      filters: {
        selectedRegionId: null
      },
      allBuildings: [],
      columns: [{
        field: 'name',
        label: 'Name'
      },
      {
        field: 'region.name',
        label: 'Region'
      }],
      loading: false,
      regions: [{regionId: -1, name: 'None'}],
      filteredBuildings: []
    }
  },
  methods: {
    getAllBuildings: function () {
      this.loading = true
      axios
        .get(`/api/buildings?sort=None&filter=None&region=None`)
        .then(response => {
          this.loading = false
          this.allBuildings = response.data
          this.filteredBuildings = this.allBuildings
        })
    },
    getAllRegions: function () {
      axios
        .get('/api/regions')
        .then(response => {
          this.regions = this.regions.concat(response.data)
        })
    },
    calculateFilters: function () {
      // first filter is applied on all buildings
      this.filteredBuildings = this.allBuildings.filter(this.filterBuildingsByRegion, this)
      // other filters are applied on the filtered buildings
    },
    filterBuildingsByRegion: function (building) {
      // return all buildings if "None" region filter is selected, or the building is in the selected region
      return Number(this.filters.selectedRegionId === -1) ||
        Number(this.filters.selectedRegionId) === Number(building.region.regionId)
    }
  },
  mounted: function () {
    this.getAllBuildings()
    this.getAllRegions()
  }
}
</script>

<style scoped>
.left {
  text-align: left
}
</style>
