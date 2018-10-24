<template>
  <div class="bathroom-info">
    <icon>
    <svgicon icon="man" width="26" height="22" original></svgicon>
    </icon>
    <rating-display></rating-display>
    <button class="report-incorrect-data">
      <i class="fas fa-exclamation-triangle"></i>
        <router-link  :to="{name: 'Feedback'}">Report a problem</router-link>
    </button>
  </div>
</template>

<!-- TODO: remove this section above me in final product -->

<script>
import './compiled-icons'
import RatingDisplay from './RatingDisplay.vue'
export default {
  name: 'BathroomPanel',
  components: {
    RatingDisplay
  }
}
</script>

<style>
</style>
