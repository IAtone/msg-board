import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../components/Index.vue'
import NewView from '../components/NewView.vue'
import Register from '../components/Register.vue'
import Login from '../components/Login.vue'
import Profile from '../components/profile/Personal.vue'
import Avatar from '../components/profile/avatar.vue'
// import Cookie from './cookie.js'

Vue.use(VueRouter)

// var isLogin = (/username/).test(document.cookie)

const routes = [
    {
        name: 'Index',
        path: '/',
        component: Index
    },
    {
        name: 'NewView',
        path: '/NewView/:id',
        component: NewView
    },
    {
        name: 'Register',
        path: '/register',
        component: Register
    },
    {
        name: 'Login',
        path: '/login',
        component: Login
    },
    {
        name: 'Profile',
        path: '/profile',
        component: Profile
    },
    {
        name: 'Avatar',
        path: '/avatar',
        component: Avatar
    }
]

const router = new VueRouter({
    routes,
    mode: 'history',
    base: '/dist/'
})

// router.beforeEach((to, from, next) => {
    
// });


export default router