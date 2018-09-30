import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import BuildingList from '@/components/BuildingList'
import Building from '@/components/Building'
import BuildingFloorPlans from '@/components/BuildingFloorPlans'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'HelloWorld',
      component: HelloWorld
    },
    {
      path: '/buildings/',
      name: 'BuildingList',
      component: BuildingList
    },
    {
      path: '/buildings/:name',
      name: 'Building',
      component: Building
    },
    {
      path: '/buildings/:name/floorplans',
      name: 'BuildingFloorPlans',
      component: BuildingFloorPlans
    }
  ]
})
