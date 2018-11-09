<template>
  <div id ="building">
    <h1 class="title is-2">{{$route.params.name}}</h1>
    <router-link :to="{name: 'BuildingFloorPlans'}">Floor Plans</router-link>
    <b-tabs v-model="activeTab" @change="filterFloorsBySelectedTab()">
      <b-tab-item v-for="tab in tabs"
                  :key="'tab' + tab"
                  :label="tab"
      >
        <div v-for="floor in sortedFloorsList(filteredFloors)" v-bind:key="floor.number">
          <b-collapse v-if="floor.bathrooms.length > 0" class="card" :open.sync="floor.isOpen" >
            <div slot="trigger" class="card-header is-primary">
                <p class="card-header-title">
                    Floor {{floor.number}}
                </p>
                <a class="card-header-icon">
                    <b-icon
                        :icon="floor.isOpen ? 'angle-down' : 'angle-right'">
                    </b-icon>
                </a>
            </div>
            <div class="card-content tab-content">
                <div class="content">
                    <bathroom-panel
                      v-for="bathroom in sortedBathroomsList(floor.bathrooms)"
                      :key="bathroom.bathroomId"
                      v-bind="bathroom"
                    ></bathroom-panel>
                </div>
            </div>
          </b-collapse>
        </div>
      </b-tab-item>
    </b-tabs>
    <!-- TODO: remove below in final product. ONLY FOR EASE OF FRONTEND TESTING -->
    <!--<div v-for="floor in [{number: 9000, isOpen: false}]" v-bind:key="floor.number">
      <b-collapse class="card" :open.sync="floor.isOpen" >
        <div slot="trigger" class="card-header is-primary">
          <p class="card-header-title">
            Floor {{floor.number}} TESTING This is just a hardcoded panel for ease of frontend testing through npm run dev.
          </p>
          <a class="card-header-icon">
            <b-icon
              :icon="floor.isOpen ? 'angle-down' : 'angle-right'">
            </b-icon>
          </a>
        </div>
        <div class="card-content">
          <div class="content">
            <bathroom-panel></bathroom-panel>
          </div>
        </div>
      </b-collapse>
    </div>-->
    <!-- TODO: remove this section above me in final product -->
  </div>
</template>

<script>
import axios from 'axios'
import BathroomPanel from './BathroomPanel.vue'

export default {
  name: 'Building',
  components: {
    'bathroom-panel': BathroomPanel
  },
  data () {
    return {
      menType: 0,
      womenType: 1,
      genderNeutralType: 2,
      name: '',
      floors: [],
      filteredFloors: [],
      tabs: ['All', 'Men\'s', 'Women\'s', 'Gender-Neutral'],
      activeTab: 0
    }
  },
  methods: {
    getBuilding: function () {
      axios
        .get('/api/' + this.$route.params.name)
        .then(response => {
          this.floors = []
          response.data.floors.forEach(this.addFloor)
          this.filteredFloors = this.floors
        })
    },
    makeFloor: function (floor) {
      var newFloor = {
        number: floor.floorKey.number,
        bathrooms: floor.bathrooms,
        isOpen: false
      }
      return newFloor
    },
    addFloor: function (floor) {
      this.floors.push(this.makeFloor(floor))
    },
    sortedFloorsList: function (floors) {
      return floors.slice().sort(function (floor1, floor2) {
        return floor1.number - floor2.number
      })
    },
    sortedBathroomsList: function (bathrooms) {
      return bathrooms.slice().sort(function (bathroom1, bathroom2) {
        return bathroom1.bathroomId - bathroom2.bathroomId
      })
    },
    filterFloorsBySelectedTab: function () {
      this.filteredFloors = this.floors.filter(this.filterFloorsByGender, this)
    },
    filterFloorsByGender: function (floor) {
      return this.activeTab === 0 ||
        this.floorContainsGender(floor, this.tabs[this.activeTab])
    },
    floorContainsGender: function (floor, gender) {
      for (var bathroomInd = 0; bathroomInd < floor.bathrooms.length; bathroomInd++) {
        if (this.bathroomIsGender(floor.bathrooms[bathroomInd], gender)) {
          return true
        }
      }
      return false
    },
    bathroomIsGender: function (bathroom, gender) {
      if (gender === 'Men\'s') {
        return Number(bathroom.genderType) === Number(this.menType)
      } else if (gender === 'Women\'s') {
        return Number(bathroom.genderType) === Number(this.womenType)
      } else if (gender === 'Gender-Neutral') {
        return Number(bathroom.genderType) === Number(this.genderNeutralType)
      }
    }
  },
  watch: {
    '$route': function (to, from) {
      this.getBuilding()
      this.activeTab = 0
    }
  },
  mounted: function () {
    this.getBuilding()
    this.activeTab = 0
  }
}
</script>

<style scoped>
  .tab-content {
    background-color: #eafaf5;
  }
</style>
