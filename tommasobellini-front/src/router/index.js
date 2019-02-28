import Vue from 'vue'
import Router from 'vue-router'
import FirstSection from '@/components/FirstSection'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'FirstSection',
      component: FirstSection
    },
  ]
})
