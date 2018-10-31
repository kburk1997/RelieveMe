<template>
<div class="bathroom-info">
  <div class="flex">
    <h3 class="bathroom-location">{{locationString}}</h3>
    <div class="gender-offset"></div>
    <div class="flex-item" v-if="genderType==0">
      <b-tooltip label="Men's bathroom">
        <svgicon icon="man" width="40" height="40" original></svgicon>
      </b-tooltip>
    </div>
    <div class="flex-item" v-if="genderType==1">
      <b-tooltip label="Women's bathroom">
        <svgicon icon="woman" width="40" height="40" original></svgicon>
      </b-tooltip>
    </div>
    <div class="flex-item" v-if="genderType==2">
      <b-tooltip label="Gender-neutral bathroom">
        <svgicon icon="gender" width="40" height="40" original></svgicon>
      </b-tooltip>
    </div>
  </div>
  <div class="flex">
    <div class="amenities-offset"></div>
      <div v-if="wheelchairAccessible" class="flex-item">
        <b-tooltip label="Wheelchair-accessible">
          <svgicon icon="wheelchair" width="26" height="22" original></svgicon>
        </b-tooltip>
      </div>
      <div v-if="menstrualProductType" class="flex-item">
        <b-tooltip label="Tampons available">
          <svgicon v-if="menstrualProductType==0" icon="tampon" width="26" height="22" original></svgicon>
        </b-tooltip>
        <b-tooltip label="Sanitary pads available">
          <svgicon v-if="menstrualProductType==1" icon="sanitary-pad" width="26" height="22" original></svgicon>
        </b-tooltip>
      </div>
      <div v-if="babyChangingStation" class="flex-item">
        <b-tooltip label="Baby-changing station">
          <svgicon icon="baby-boy" width="26" height="22" original></svgicon>
        </b-tooltip>
      </div>
      <div v-if="ongoingBathroomIssue" class="flex-item">
        <b-tooltip label="Ongoing maintenance issue">
          <svgicon icon="technics" width="26" height="22" original></svgicon>
          <svgicon icon="warning" width="26" height="22" original></svgicon>
        </b-tooltip>
      </div>
      <div v-if="singleStall" class="flex-item">
        <b-tooltip label="Single stall bathroom">
          <svgicon icon="door" width="26" height="22" original></svgicon>
        </b-tooltip>
      </div>
      <div v-if="fragranceFreeSoap" class="flex-item">
        <b-tooltip label="Fragrance-free soap">
          <svgicon icon="hands" width="26" height="22" original></svgicon>
        </b-tooltip>
      </div>
  </div>
  <rating-display v-bind:numPositiveRating="numPositiveRating" v-bind:numNegativeRating="numNegativeRating"></rating-display>
  <button class="report-problem">
    <i class="fas fa-exclamation-triangle"></i>
    <router-link :to="{name: 'IssueForm', params: {givenBathroomId: this.bathroomId}}">Report a problem</router-link>
  </button>
</div>
</template>

<!-- TODO: remove this section above me in final product -->

<script>
import './compiled-icons'
import RatingDisplay from './RatingDisplay.vue'

export default {
  name: 'BathroomPanel',
  props: {
    bathroomId: {
      type: Number,
      default: -1
    },
    genderType: {
      type: Number,
      default: null
    },
    singleStall: {
      type: Boolean,
      default: false
    },
    babyChangingStation: {
      type: Boolean,
      default: false
    },
    wheelchairAccessible: {
      type: Boolean,
      default: false
    },
    shelves: {
      type: Boolean,
      default: false
    },
    locationString: {
      type: String,
      default: 'Could not determine location'
    },
    menstrualProductType: {
      type: Number,
      default: -1
    },
    menstrualDisposal: {
      type: Boolean,
      default: false
    },
    fragranceFreeSoap: {
      type: Boolean,
      default: false
    },
    numNegativeRating: {
      type: Number,
      default: 0
    },
    numPositiveRating: {
      type: Number,
      default: 0
    },
    maintenanceIssueNum: {
      type: Number,
      default: 0
    },
    ongoingBathroomIssue: {
      type: Boolean,
      default: false
    }
  },
  components: {
    'rating-display': RatingDisplay
  }
}
</script>

<style scoped>
  .bathroom-location {
    text-align: left;
  }
  .bathroom-info {
    padding-bottom: 2%;
    padding-top: 2%;
    padding-left: 15%;
    padding-right: 15%;
  }
  .flex{
    display: flex;
  }
  .gender-offset {
    width: 100%
  }
  .amenities-offset {
    width: 2%;
  }
  .flex-item{
    flex-grow: 0;
  }

</style>
