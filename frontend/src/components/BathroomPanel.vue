<template>
  <div class="bathroom-info">
      <p class="location" text-align=left>Location</p>
    <div class = "GenderType">
      <icon>
        <svgicon v-if="genderType===0" icon="man" width="40" height="40" original></svgicon>
        <svgicon v-if="genderType==1" icon="woman" width="40" height="40" original></svgicon>
        <svgicon v-if="genderType==2" icon="gender" width="40" height="40" original></svgicon>
      </icon>
    </div>
    <div class = "WheelchairAccessible">
      <icon>
        <svgicon v-if="wheelchairAccessible" icon="wheelchair" width="26" height="22" original></svgicon>
      </icon>
    </div>
     <div class = "menstrual-care">
      <icon>
        <svgicon icon="tampon" width="26" height="22" original></svgicon>
        <svgicon icon="sanitary-pad" width="26" height="22" original></svgicon>
      </icon>
    </div>
    <div class = "baby-changing">
      <icon>
        <svgicon icon="baby-boy" width="26" height="22" original></svgicon>
      </icon>
    </div>
    <div class = "maintenance-issue">
      <icon>
        <svgicon icon="technics" width="26" height="22" original></svgicon>
        <svgicon icon="warning" width="26" height="22" original></svgicon>

      </icon>
    </div>
    <div class = "single-stall">
      <icon>
        <svgicon icon="door" width="26" height="22" original></svgicon>
      </icon>
    </div>
    <div class = "fragrance-free">
      <icon>
        <svgicon icon="hands" width="26" height="22" original></svgicon>
      </icon>
    </div>
    <rating-display></rating-display>
    <button class="report-problem">
      <i class="fas fa-exclamation-triangle"></i>
        <router-link :to="{name: 'Feedback'}">Report a problem</router-link>
    </button>
  </div>
</template>

<!-- TODO: remove this section above me in final product -->

<script>
import './compiled-icons'
import RatingDisplay from './RatingDisplay.vue'
import axios from 'axios'

export default {
  name: 'BathroomPanel',
  components: {
    RatingDisplay
  },
  data () {
    return {
      bathroom: [
        {genderType: null},
        {singleStall: false},
        {babyChangingStation: false},
        {wheelChairAccessible: false},
        {shelves: false},
        {locationString: ''},
        {menstrualProductType: null},
        {menstrualDisposal: false},
        {fragranceFreeSoap: false},
        {maintenanceIssueNum: null}
      ]
    }
  }
}