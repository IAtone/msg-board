<template>
  <el-header class="header">
    <div class="container">
      <div class="logo">
        <router-link to="/">
          <img src="../assets/logo.png" alt>
        </router-link>
        <span>{{ msg.header }}</span>
      </div>
      <el-menu
        :default-active="activeIndex2"
        class="el-menu-demo"
        mode="horizontal"
        @select="handleSelect"
        background-color="#41B883"
        text-color="#fff"
        active-text-color="#fff"
      >
        <el-menu-item index="1">
          <router-link to="/" tag="div">留言中心</router-link>
        </el-menu-item>
        <el-submenu index="2" v-if="status">
          <template slot="title">{{ username }}</template>
          <el-menu-item index="2-1">
            <router-link tag="div" :to="{path: '/profile'}">个人资料</router-link>
          </el-menu-item>
          <el-menu-item tag="div" index="2-2" @click="quit()">退出</el-menu-item>
        </el-submenu>
        <el-submenu v-if="!status" index="2">
          <template slot="title">未登录</template>
          <el-menu-item tag="div" index="2-1">亲，未登录，不能操作哦！</el-menu-item>
        </el-submenu>
        <el-menu-item index="3">
          <router-link tag="div" :to="{name: 'Register'}">注册</router-link>
        </el-menu-item>
        <el-menu-item index="4">
          <router-link tag="div" :to="{path: '/login'}">登录</router-link>
        </el-menu-item>
      </el-menu>
    </div>
  </el-header>
</template>


<script scoped>
export default {
  data() {
    return {
      activeIndex: "1",
      activeIndex2: "1",
      status: false,
      username: ""
    };
  },
  methods: {
    handleSelect(key, keyPath) {
      console.log(key, keyPath);
    },
    quit() {
      this.$cookies.remove("username");
      this.$cookies.remove("userId");
      this.$cookies.remove("userlevel");
      this.status = "";
      this.$router.push("/login");
    },
    init() {
      if (this.$cookies.get("username")) {
        this.username = this.$cookies.get("username");
        this.status = true;
      } else {
        this.status = false;
      }
    }
  },
  props: {
    msg: Object
  },
  watch: {
    $route: "init"
  },
  created() {
    this.init();
  }
  // beforeRouteUpdate(to, from, next) {
  //   let isLogin = false;
  //   if (this.$cookies.get("username")) {
  //     isLogin = true;
  //     console.log("isLogin:" + isLogin);
  //   }
  //   if (isLogin) {
  //     router.push({ path: "/" });
  //     next();
  //   } else if (to.path == "/login" || to.path == "/register") {
  //     next();
  //   }
  // }
};
</script>

<style>
.header {
  background-color: rgba(0, 0, 0, 0.7);
  margin-bottom: 20px;
}
.header .container {
  display: flex;
  justify-content: space-between;
  height: 60px;
}
.logo img {
  vertical-align: middle;
  height: 100%;
}
.logo span {
  font-size: 18px;
  color: #fff;
}
.el-submenu__title i {
  color: #fff !important;
}
.header .el-menu-item,
.header .el-submenu__title {
  font-size: 16px;
}
a {
  color: #fff;
}
.el-menu-demo li {
  padding: 0;
}
.el-menu-demo div {
  padding: 0 20px;
}
.el-menu--horizontal > .el-submenu.is-active .el-submenu__title {
  border: none;
}
.el-submenu.is-active .el-submenu__title {
  border: none;
}
.el-menu-demo .router-link-exact-active {
  color: #41b883;
  background-color: #fff;
}
.el-menu--horizontal > .is-active,
.el-menu--horizontal > .el-menu-item {
  border: none;
}
</style>


