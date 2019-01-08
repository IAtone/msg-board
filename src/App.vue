<template>
  <div id="app" v-cloak>
      <Header :msg="msg"></Header>
      <router-view></router-view>
      <Footer :msg="msg"></Footer>
  </div>
</template>

<script>
import Header from "./components/Header.vue"
import Footer from './components/Footer.vue'

export default {
  name: "app",
  components: {
    Header,
    Footer
  },
  data() {
    return {
      msg: {
        header: '欢迎来到新闻的世界！',
        footer: '版权所属@0910'
      }
    }
  }
};
</script>

<style>
[v-cloak] {
  display: none;
}
* {
  margin: 0;
  padding: 0;
}
body {
  font-size: 14px;
  font-family: "微软雅黑,宋体";
  color: #999;
  background-color: #eee;
}
a {
  text-decoration: none;
}
ul {
  list-style: none;
}
.container {
  width: 1200px;
  height: auto;
  margin: 0 auto;
}
h1 {
  text-align: center;
  color: #41b883;
  width: 200px;
  background-color: #fff;
  margin: 0 auto 20px;
  padding: 10px;
  box-shadow: 5px 5px 10px #41b883;
  box-sizing: border-box;
}
.ql-editor {
  min-height: 200px;
}
</style>
