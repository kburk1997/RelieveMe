<template>
  <div id ="building">
    <h1 class="title is-2">{{$route.params.name}}</h1>
    <router-link :to="{name: 'BuildingFloorPlans'}">Floor Plans</router-link>

    <div v-for="floor in floors" v-bind:key="floor.number">
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
            <div class="card-content">
                <div class="content">
                    <bathroom-panel
                      v-for="bathroom in floor.bathrooms"
                      :key="bathroom.bathroomId"
                      v-bind="bathroom"
                    ></bathroom-panel>
                </div>
            </div>
        </b-collapse>

      </div>

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
      name: '',
      floors: []
    }
  },
  methods: {
    getBuilding: function () {
      axios
        .get('/api/' + this.$route.params.name)
        .then(response => {
          this.floors = []
          response.data.floors.forEach(this.addFloor)
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
    }
  },
  watch: {
    '$route': function (to, from) {
      this.getBuilding()
    }
  },
  mounted: function () {
    this.getBuilding()
  }
}
</script>

<style scoped>
</style>
