<template>
<div class="rating-display">
    <button @click="upvote">
        <svgicon class="happy-poo" icon="happy-poo" width="20" height="20" focusable="false" original></svgicon>
            <b> {{ numNegativeRating }} </b>
    </button>
    <button @click="downvote">
        <svgicon class="sad-poo" icon="sad-poo" width="20" height="20" focusable="false" original></svgicon>
            <b> {{ numPositiveRating }} </b>
    </button>
</div>
</template>

<script>
export default {
  name: 'RatingDisplay',
  props: {
    numNegativeRating: {
      type: Number,
      default: 0
    },
    numPositiveRating: {
      type: Number,
      default: 0
    }
  },
  data () {
    // TODO: get num-positve and num-negative rating from backend database
    return {
      upvoted: false,
      downvoted: false
    }
  },
  methods: {
    upvote: function (upvotes) {
      this.upvoted = !this.upvoted
      this.downvoted = false
    },
    downvote: function (downvotes) {
      this.downvoted = !this.downvoted
      this.upvoted = false
    }
  }
}
</script>
