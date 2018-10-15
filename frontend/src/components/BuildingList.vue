<template>
  <div class="columns">
    <div class="column is-2" id="filter-sidebar">
      <b-field id="region-filter" class="left" label="Filter by region:">
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
      <br>
      <b-field id="accessibility-filter" class="left" label="Filter by restroom accessibility:">
        <b-select @input="calculateFilters()" v-model="filters.selectedAccessibility" placeholder="Select a type">
          <option
            v-for="accessibility in accessibilities"
            :value="accessibility.id"
            :key="accessibility.id"
          >
            {{accessibility.name}}
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
      genderNeutralType: 2, // gender-neutral restrooms in backend gender type == 2
      filters: {
        selectedRegionId: null,
        selectedAccessibility: null
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
      accessibilities: [
        {id: -1, name: 'None'},
        {id: 0, name: 'Wheelchair accessible'},
        {id: 1, name: 'Gender-neutral'}
      ],
      filteredBuildings: []
    }
  },
  methods: {
    getAllBuildings: function () {
      this.loading = true
      axios
        .get(`/api/buildings`)
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
      this.filteredBuildings = this.allBuildings.filter(this.filterAll, this)
    },
    filterAll: function (building) {
      return this.filterBuildingsByRegion(building) && this.filterBuildingsByRestroomAccessibility(building)
    },
    filterBuildingsByRegion: function (building) {
      // return all given buildings if no region filter is selected; or return buildings in the selected region
      return this.filters.selectedRegionId === null ||
        Number(this.filters.selectedRegionId === -1) ||
        Number(this.filters.selectedRegionId) === Number(building.region.regionId)
    },
    filterBuildingsByRestroomAccessibility: function (building) {
      // return all given buildings if no accessibility filter is selected;
      // or return all buildings that contain bathrooms with that accessibility option
      return this.filters.selectedAccessibility === null ||
        Number(this.filters.selectedAccessibility === -1) ||
        this.buildingContainsAccessibility(building)
    },
    buildingContainsAccessibility: function (building) {
      // look at each floor in the building, each bathroom on the floor, and check if it has the accessibility option
      for (var floorInd = 0; floorInd < building.floors.length; floorInd++) {
        if (this.floorContainsAccessibility(building.floors[floorInd])) {
          return true
        }
      }
      return false
    },
    floorContainsAccessibility: function (floor) {
      for (var bathroomInd = 0; bathroomInd < floor.bathrooms.length; bathroomInd++) {
        if (this.bathroomHasAccessibility(floor.bathrooms[bathroomInd])) {
          return true
        }
      }
      return false
    },
    bathroomHasAccessibility: function (bathroom) {
      if (Number(this.filters.selectedAccessibility) === 0) {
        return bathroom.wheelchairAccessible
      } else if (Number(this.filters.selectedAccessibility) === 1) {
        return Number(bathroom.genderType) === this.genderNeutralType
      }
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
