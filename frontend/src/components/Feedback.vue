<template>
<div id="feedback" align="left">
  <h1>Send an email</h1>
  <form id="feedback-form">
    <p>
      <label for="email">Email: </label>
      <input type="text" id="email" v-model="email">
    </p>

    <p>
      <label for="category">Category: </label>
      <select id="category" v-model="selectedCategoryId">
        <option
          v-for="category in categories"
          :key="category.id"
          :value="category.id">
            {{category.text}}
        </option>
      </select>
    </p>

    <p>
      <label for="subject">Subject: </label>
      <input type="text" id="subject" v-model="subject">
    </p>

    <p>
      <label for="description">Description:</label>
      <br>
      <textarea id="description" rows="10" cols ="70" v-model="description"></textarea>
    </p>

    <p>
      <input type="submit" value="Submit" @click.stop.prevent="submit()">
    </p>
  </form>
</div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'Feedback',
  props: {
    preSelectedCategoryId: {
      type: String,
      default: '3'
    }
  },
  data () {
    return {
      selectedCategoryId: this.preSelectedCategoryId,
      email: null,
      subject: null,
      description: null,
      categories: []
    }
  },
  methods: {
    getCategoriesList: function () {
      this.categories = [
        {id: 0, text: 'Feedback'},
        {id: 1, text: 'Maintenance issue'},
        {id: 2, text: 'Report inaccurate data'},
        {id: 3, text: 'Other'}
      ]
    },
    getPostBody: function () {
      return {
        email: this.email,
        categoryId: this.selectedCategoryId,
        subject: this.subject,
        description: this.description
      }
    },
    submit: function () {
      axios
        .post('/api/submit', this.getPostBody())
        .then((response) => {
          this.$router.push('/feedbackSubmitted')
        })
        .catch((e) => {
          console.error(e)
        })
    }
  },
  mounted: function () {
    this.getCategoriesList()
  }
}
</script>

<style scoped>

</style>
