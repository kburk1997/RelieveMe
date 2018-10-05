// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import Buefy from 'buefy'
import 'buefy/dist/buefy.css'
import Icon from 'vue-awesome/components/Icon'
Vue.config.productionTip = false

Vue.component('v-icon', Icon)

Vue.use(Buefy, {
  defaultIconPack: 'fas',
  defaultContainerElement: '#content'
  // ...
})
/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
