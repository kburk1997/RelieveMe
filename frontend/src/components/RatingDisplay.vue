<template>
<div class="rating-display">
    <button @click="upvote">
        <svgicon class="happy-poo" icon="happy-poo" width="20" height="20" focusable="false" original></svgicon>
            <b> {{ upvotes }} </b>
    </button>
    <button @click="downvote">
        <svgicon class="sad-poo" icon="sad-poo" width="20" height="20" focusable="false" original></svgicon>
            <b> {{ downvotes }} </b>
    </button>
</div>
</template>

<script>
export default {
  name: 'RatingDisplay',
  data () {
    // TODO: get num-positve and num-negative rating from backend database
    return {
      upvoted: false,
      downvoted: false,
      upvotes: 0,
      downvotes: 0
    }
  },
  methods: {
    upvote: function (upvotes) {
      this.upvoted = !this.upvoted
      this.downvoted = false
      upvotes += 1
    },
    downvote: function (downvotes) {
      this.downvoted = !this.downvoted
      this.upvoted = false
      downvotes += 1
    }
  },
  computed: {
    votes: function () {
      if (this.upvoted) {
        return this.upvotes + 1
      } else if (this.downvoted) {
        return this.downvotes - 1
      } else {
        return this.votes
      }
    }
  }
}
</script>
