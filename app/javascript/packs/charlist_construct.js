import Vue from 'vue'
import Construct from '../components/charlist/construct.vue'
import axios from 'axios';

document.addEventListener('DOMContentLoaded', () => {
  const container = document.getElementById('charlist_construct');
  const props = JSON.parse(container.getAttribute('data'));
  axios.defaults.headers.common['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content')
  new Vue({
    render: h => h(Construct, { props })
  }).$mount('#charlist_construct')
})
