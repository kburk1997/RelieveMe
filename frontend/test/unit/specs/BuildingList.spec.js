import Vue from 'vue'
import BuildingList from '@/components/BuildingList'
import Buefy from 'buefy'

Vue.use(Buefy, {
  defaultIconPack: 'fas',
  defaultContainerElement: '#content'
  // ...
})
let vm

describe('BuildingList.vue', () => {
  beforeEach(() => {
    const Constructor = Vue.extend(BuildingList)
    vm = new Constructor().$mount()
  })
  it('should render correct header', () => {
    expect(vm.$el.querySelector('h1').textContent).toEqual('All Buildings')
  })
})
