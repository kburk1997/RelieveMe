<template>
<div id="feedback" >
  <h1 class="title is-2">Send an email</h1>
  <form id="feedback-form" align="left">
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

      <b-field horizontal label="Subject">
        <b-input type="text" id="subject" v-model="subject"></b-input>
      </b-field>

      <b-field horizontal label ="Description">
      <b-input type="textarea" id="description" rows="10" cols ="70" v-model="description"></b-input>
      </b-field>

<b-field horizontal>
  <vue-recaptcha
            ref="recaptcha"
            @verify="onCaptchaVerified"
            @expired="resetCaptcha"
            size="checkbox"
            sitekey="6LeVdXcUAAAAAPN7-fFOOLDkA3Enis0Xx7yDd4Iz">
        </vue-recaptcha>
    </b-field>
    <p class="has-text-danger" v-if="captchaError">Please complete the CAPTCHA.</p>
    <p class="has-text-danger" v-if="serverError">A server error occurred. Please try again later.</p>
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
import VueRecaptcha from 'vue-recaptcha'

export default {
  name: 'Feedback',
  props: {
    preSelectedCategory: {
      type: String,
      default: 'Other'
    }
  },
  components: {VueRecaptcha},
  data () {
    return {
      selectedCategory: this.preSelectedCategory,
      email: null,
      subject: null,
      description: null,
      categories: [],
      captchaResponse: null,
      // g-recaptcha-response: null,
      isLoading: false,
      captchaError: false,
      serverError: false
    }
  },
  methods: {
    getCategoriesList: function () {
      this.categories = ['Feedback', 'Other']
    },
    getPostBody: function () {
      let postBody = {
        captcha: this.captchaResponse,
        email: this.email,
        category: this.selectedCategory,
        subject: this.subject,
        description: this.description
        // n: this.g-recaptcha-response
      }
      return postBody
    },
    submit: function () {
      console.log(this.getPostBody())
      if (this.captchaResponse == null) {
        this.captchaError = true
        return
      }
      this.isLoading = true
      setTimeout(() => {
        this.isLoading = false
      }, 10 * 1000)

      axios
        .post('/api/submitFeedback', this.getPostBody())
        .then((response) => {
          console.log(response)
          // check for error
          this.$router.push('/feedbackSubmitted')
        })
        .catch((err) => {
          this.serverError = true
          console.error(err)
          this.resetCaptcha()
        })
    },
    onCaptchaVerified: function (response) {
      this.captchaResponse = response
    },
    resetCaptcha: function () {
      this.captchaResponse = null
    }
  },
  mounted: function () {
    this.getCategoriesList()
  }
}
</script>

<style scoped>
</style>
