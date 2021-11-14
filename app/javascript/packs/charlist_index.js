import Vue from 'vue'
import Home from '../components/charlist/index.vue'

document.addEventListener('DOMContentLoaded', () => {
  const container = document.getElementById('charlist_index');
  const props = JSON.parse(container.getAttribute('data'));
  new Vue({
    render: h => h(Home, { props })
  }).$mount('#charlist_index')
})
