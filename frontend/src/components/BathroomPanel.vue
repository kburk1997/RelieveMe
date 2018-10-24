<template>
  <div class="bathroom-info">
    <svgicon icon="man" width="26" height="22" original></svgicon>
    <rating-display></rating-display>
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
