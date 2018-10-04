<template>
  <b-autocomplete
    id="search-bar"
    rounded
    v-model="name"
    :data="filteredDataArray"
    placeholder="Search for a building"
    icon="magnify"
    @select="option => selected = option">
    <template slot="empty">No building found</template>
  </b-autocomplete>
</template>

<script>
import BAutocomplete from 'buefy/src/components/autocomplete/Autocomplete'
import axios from 'axios'

export default {
  name: 'SearchBar',
  components: {
    BAutocomplete
  },
  data () {
    return {
      buildings: ['hi', 'bob'], // TODO: remove hard coded stuff
      name: '',
      selected: null
    }
  },
  methods: {
    getAllBuildings: function () {
      axios
        .get(`/api/buildings?sort=None&filter=None&region=None`)
        .then(response => {
        })
        .catch(error => {
          console.error(error)
        })
    }
  },
  computed: {
    filteredDataArray () {
      return this.buildings.filter((option) => {
        return option
          .toString()
          .toLowerCase()
          .indexOf(this.name.toLowerCase()) >= 0
      })
    }
  },
  mounted: function () {
    this.getAllBuildings()
  }
}
</script>

<style scoped>
</style>
