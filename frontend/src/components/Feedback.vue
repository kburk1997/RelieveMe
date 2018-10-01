<template>
<div id="feedback" align="left">
  <h1 class="title is-2">Send an email</h1>
  <form id="feedback-form">
      <b-field horizontal label ="Email"><b-input type="text" id="email" v-model="email"></b-input></b-field>

      <b-field horizontal label ="Category">
        <b-select id="category" v-model="selectedCategoryId">
        <option
          v-for="category in categories"
          :key="category.id"
          :value="category.id">
            {{category.text}}
        </option>
      </b-select>
      </b-field>

      <b-field horizontal label="Subject">
        <b-input type="text" id="subject" v-model="subject"></b-input>

      </b-field>

      <b-field horizontal label ="Description">
      <b-input type="textarea" id="description" rows="10" cols ="70" v-model="description"></b-input>
      </b-field>

    <b-field horizontal>
      <p class="control">
        <button class="button is-primary" @click.stop.prevent="submit()">Submit</button>
      </p>
    </b-field>
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
