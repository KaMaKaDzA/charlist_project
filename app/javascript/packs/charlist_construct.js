import Vue from 'vue'
import Construct from '../components/charlist/construct.vue'

document.addEventListener('DOMContentLoaded', () => {
  const container = document.getElementById('charlist_construct');
  const props = JSON.parse(container.getAttribute('data'));
  new Vue({
    render: h => h(Construct, { props })
  }).$mount('#charlist_construct')
})
