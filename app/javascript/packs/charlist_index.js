import Vue from 'vue'
import Index from '../components/charlist/index.vue'

document.addEventListener('DOMContentLoaded', () => {
  const container = document.getElementById('charlist_index');
  const props = JSON.parse(container.getAttribute('data'));
  new Vue({
    render: h => h(Index, { props })
  }).$mount('#charlist_index')
})
