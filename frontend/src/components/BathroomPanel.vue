<template>
  <div class = "bathroom-info">
    <svgicon v-if="GenderType===2" icon="man" width="22" height="18" original></svgicon>
    <svgicon v-if="GenderType===1" icon="woman" width="22" height="18" original></svgicon>
    <svgicon v-if="GenderType===0" icon="gender" width="22" height="18" original></svgicon>
    <div v-bind:class="GetLocation"></div>
    <svgicon v-if="WheelchairAccessible" icon="wheelchair" width="22" height="18" original></svgicon>

  </div>
</template>

<!-- TODO: remove this section above me in final product -->

<script>
import './compiled-icons'
export default {
  name: 'BathroomPanel',
  data () {
    return {
      GenderType: '',
      location: '',
      amenities: []
    }
  },
  methods: {
    GenderType: function () {
      return GenderType = 1
    },
    GetLocation: function () {
      return location = 'location description'
    },
    WheelchairAccessible: function () {
        return WheelchairAccessible = true
    },

  }
}
</script>

<style>
</style>
