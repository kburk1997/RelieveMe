<template>
  <div id ="building">
    <h1 class="title is-2">{{$route.params.name}}</h1>
    <router-link :to="{name: 'BuildingFloorPlans'}">Floor Plans</router-link>

    <div v-for="floor in floors" v-bind:key="floor.number">
      <b-collapse class="card" :open.sync="floor.isOpen" >
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
                    Bathrooms
                </div>
            </div>
        </b-collapse>

      </div>
  </div>
</template>

<script>
export default {
  name: 'Building',
  data () {
    return {
      name: '',
      floors: [
        {
          number: 1,
          isOpen: false
        },
        {
          number: 2,
          isOpen: false
        },
        {
          number: 3,
          isOpen: false
        }
      ] // TODO get rid of hardcoded floors
    }
  }

}
</script>

<style>
</style>
