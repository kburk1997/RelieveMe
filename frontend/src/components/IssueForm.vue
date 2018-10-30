<template>
<div id="issue-form" >
  <h1 class="title is-2">Send an email</h1>
  <form id="issue" align="left">
    <b-field horizontal label ="Email"><b-input type="text" id="email" v-model="email"></b-input></b-field>

    <b-field horizontal label ="Category">
      <b-select id="category" v-model="selectedCategory">
        <option
          v-for="category in categories"
          :key="category"
          :value="category">
          {{category}}
        </option>
      </b-select>
    </b-field>

    <b-field horizontal label="Bathroom ID">
      <b-input type="text" id="bathroomId" v-model="bathroomId" disabled></b-input>
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
        <b-loading :is-full-page="true" :active.sync="isLoading" :can-cancel="false"></b-loading>
      </p>
    </b-field>
  </form>
</div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'IssueForm',
  props: {
    givenBathroomId: {
      type: Number,
      default: -1
    }
  },
  data () {
    return {
      selectedCategory: null,
      email: null,
      subject: null,
      bathroomId: this.givenBathroomId,
      description: null,
      categories: [],
      isLoading: false
    }
  },
  methods: {
    getCategoriesList: function () {
      this.categories = ['Maintenance Issue', 'Inaccurate Data']
    },
    getPostBody: function () {
      return {
        email: this.email,
        category: this.selectedCategory,
        bathroomId: this.bathroomId,
        subject: this.subject,
        description: this.description
      }
    },
    submit: function () {
      this.isLoading = true
      setTimeout(() => {
        this.isLoading = false
      }, 10 * 1000)
      axios
        .post('/api/submitIssue', this.getPostBody())
        .then((response) => {
          this.$router.push('/feedbackSubmitted')
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
