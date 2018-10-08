<template>
  <b-autocomplete ref="autocomplete" id="search-bar"
    v-model="searchTerm"
    :data="filteredDataArray"
    placeholder="Search for a building"
    @select="option => selected = option"
    icon="magnify"
    @keydown.native.enter.prevent="enterPressed()">
    <template slot="empty">No building found</template>
    <input type="submit" value="Submit">
  </b-autocomplete>
</template>

<script>
import axios from 'axios'

export default {
  name: 'SearchBar',
  data () {
    return {
      buildings: ['hi', 'bob', 'bill'], // TODO: remove hard coded stuff
      searchTerm: '',
      selected: null
    }
  },
  methods: {
    resetState: function () {
      this.searchTerm = ''
      this.selected = null
    },
    enterPressed: function () {
      var autocompleteComponent = this.$refs.autocomplete
      if (autocompleteComponent.hovered === null) {
        // make search request and clear & close the dropdown
        console.log('Sending to...' + '/api/' + this.searchTerm)
        this.$router.push('/buildings/' + this.searchTerm)
        autocompleteComponent.isActive = false
        this.resetState()
      } else {
        // user is hovering over an option, choose the option
        autocompleteComponent.enterPressed()
      }
    },
    getAllBuildings: function () {
      axios
        .get(`/api/buildings?sort=None&filter=None&region=None`)
        .then(response => { // TODO: put the data in buildings
        })
        .catch(error => {
          //console.error(error)
        })
    }
  },
  computed: {
    filteredDataArray () {
      return this.buildings.filter((option) => {
        return option
          .toString()
          .toLowerCase()
          .indexOf(this.searchTerm.toLowerCase()) >= 0
      })
    }
  },
  created: function () {
    this.getAllBuildings()
  }
}
</script>

<style scoped>
</style>
