<template>
<div class="box bathroom-info">
  <div class="flex">
    <div class="gender-offset">
      <h3 class="bathroom-location">{{locationString}}</h3>
    </div>
    <div class="flex-item" v-if="genderType==0">
      <b-tooltip label="Men's bathroom">
        <svgicon icon="man" width="100" height="100" original></svgicon>
      </b-tooltip>
    </div>
    <div class="flex-item" v-if="genderType==1">
      <b-tooltip label="Women's bathroom">
        <svgicon icon="woman" width="100" height="100" original></svgicon>
      </b-tooltip>
    </div>
    <div class="flex-item" v-if="genderType==2">
      <b-tooltip label="Gender-neutral bathroom">
        <svgicon icon="gender" width="100" height="100" original></svgicon>
      </b-tooltip>
    </div>
  </div>
  <div class="flex">
    <div class="amenities-offset"></div>
      <div v-if="wheelchairAccessible" class="flex-item">
        <b-tooltip label="Wheelchair-accessible">
          <svgicon icon="wheelchair" width="48" height="40" original></svgicon>
        </b-tooltip>
      </div>
      <div v-if="menstrualDisposal" class="flex-item">
        <b-tooltip label="Menstrual disposal available">
          <svgicon icon="bin" width="48" height="40" original></svgicon>
        </b-tooltip>
      </div>
      <div v-if="menstrualProductType" class="flex-item">
        <b-tooltip label="Tampons available">
          <svgicon v-if="menstrualProductType==0 || menstrualProductType==2" icon="tampon" width="48" height="40" original></svgicon>
        </b-tooltip>
      </div>
      <div v-if="menstrualProductType" class="flex-item">
          <b-tooltip label="Sanitary pads available">
          <svgicon v-if="menstrualProductType==1 || menstrualProductType==2" icon="sanitary-pad" width="48" height="40" original></svgicon>
        </b-tooltip>
      </div>
      <div v-if="shelves" class="flex-item">
        <b-tooltip label="Shelves">
          <svgicon icon="shelf" width="48" height="40" original></svgicon>
        </b-tooltip>
      </div>
      <div v-if="hooks" class="flex-item">
        <b-tooltip label="Hooks">
          <svgicon icon="hanger" width="48" height="40" original></svgicon>
        </b-tooltip>
      </div>
      <div v-if="babyChangingStation" class="flex-item">
        <b-tooltip label="Baby-changing station">
          <svgicon icon="baby-boy" width="48" height="40" original></svgicon>
        </b-tooltip>
      </div>
      <div v-if="ongoingBathroomIssueDynamic" class="flex-item">
        <b-tooltip label="Ongoing maintenance issue">
          <svgicon icon="warning" width="48" height="40" original></svgicon>
        </b-tooltip>
      </div>
      <div v-if="singleStall" class="flex-item">
        <b-tooltip label="Single stall bathroom">
          <svgicon icon="door" width="48" height="40" original></svgicon>
        </b-tooltip>
      </div>
      <div v-if="fragranceFreeSoap" class="flex-item">
        <b-tooltip label="Fragrance-free soap">
          <svgicon icon="hands" width="48" height="40" original></svgicon>
        </b-tooltip>
      </div>
  </div>
  <rating-display
      v-bind:origNumPositiveRating="numPositiveRating"
      v-bind:origNumNegativeRating="numNegativeRating"
      v-bind:bathroom-id="bathroomId"></rating-display>
  <div>
    <button class="button is-danger report-problem-button"  @click="isComponentModalActive = true">
      <b-icon style="margin-right: 5px;" class="fas fa-exclamation-triangle"></b-icon>
      Report a problem
    </button>
    <b-modal :active.sync="isComponentModalActive" has-modal-card>
      <issue-form @submission="flagMaintenanceIssue" v-bind="{
            givenBathroomId: this.bathroomId,
            givenMenstrualProductType: this.menstrualProductType
          }"></issue-form>
    </b-modal>
  </div>
</div>
</template>

<script>
import './compiled-icons'
import RatingDisplay from './RatingDisplay.vue'
import IssueForm from './IssueForm'

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
    hooks: {
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
    IssueForm,
    'rating-display': RatingDisplay
  },
  data () {
    return {
      ongoingBathroomIssueDynamic: this.ongoingBathroomIssue,
      isComponentModalActive: false
    }
  },
  methods: {
    flagMaintenanceIssue: function (maintenanceIssueFlag) {
      this.ongoingBathroomIssueDynamic = true
    }
  }
}
</script>

<style scoped>
  .bathroom-location {
    text-align: left;
  }
  .bathroom-info {
    padding-bottom: 5%;
    padding-top: 2%;
    padding-left: 15%;
    padding-right: 15%;
  }
  .flex{
    display: flex;
  }
  .gender-offset {
    width: 100%;
  }
  .amenities-offset {
    width: 2%;
  }
  .flex-item {
    flex-grow: 0;
  }
  .report-problem-text {
    color: #ffffff;
  }
  .report-problem-button {
    float: right;
  }

</style>
