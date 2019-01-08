<template>
  <div class="index">
    <div class="container">
      <h1>留言列表</h1>
      <ul>
        <li v-for="(val, index) in news" :key="index">
          <span>{{ val.createDate }}</span>
          <h3>{{ val.title }}</h3>
          <p>{{ val.body }}</p>
          <router-link :to="{path:/newView/+val.chatId}">浏览详情</router-link>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  name: "Index",
  data() {
    return {
      news: []
    };
  },
  methods: {
    getNewsList() {
      this.axios
        .get("getChatList.php")
        .then(res => {
          console.log(res.data);
          this.news = res.data;
        })
        .catch(err => {
          console.log(err);
        });
    }
  },
  created() {
    this.getNewsList();
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
/* h1 {
  text-align: center;
  color: #41B883;
  width: 200px;
  background-color: #fff;
  margin: 0 auto 20px;
  padding: 10px;
  box-shadow: 5px 5px 10px #41B883;
  box-sizing: border-box;
} */
a {
  color: #409eff;
}
a:hover {
  opacity: 0.8;
}
ul li {
  width: 800px;
  margin: 0 auto;
  /* border: 2px solid #fff; */
  box-shadow: 0 0 20px #409eff;
  margin-bottom: 20px;
  padding: 20px;
  border-radius: 10px;
  box-sizing: border-box;
}

ul li span {
  color: #fff;
  display: inline-block;
  padding: 10px;
  background-color: #41B883;
}
ul li h3 {
  padding: 10px 0 10px;
  color: #41B883;
  font-size: 20px;
  border-bottom: 1px solid #41B883;
}
ul li p {
  margin:10px 0 20px;
}
</style>
