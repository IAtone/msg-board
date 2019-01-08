import Vue from 'vue'
import App from './App.vue'
import router from './scripts/router'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import axios from 'axios'
import VueAxios from 'vue-axios'
import VueCookies from 'vue-cookies'


Vue.config.productionTip = false
axios.defaults.baseURL = "http://www.atone.shop/dist/api/"
axios.defaults.withCredentials = true


Vue.use(ElementUI)
//要想使用use，那么必须引入vue-axios，且vue-axios必须在axios之前使用，不然也不行
Vue.use(VueAxios, axios)

Vue.use(VueCookies)
// VueCookies.config('7d')

// Vue.prototype.axios = axios

new Vue({
  router,
  render: h => h(App),
}).$mount('#app')

