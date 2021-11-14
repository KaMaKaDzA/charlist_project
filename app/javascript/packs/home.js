import Vue from 'vue'
import Home from '../components/home.vue'

document.addEventListener('DOMContentLoaded', () => {
  const container = document.getElementById('home');
  const props = JSON.parse(container.getAttribute('data'));
  new Vue({
    render: h => h(Home, { props })
  }).$mount('#home')
})
