<template>
  <div class="index">
    <div class="container">
      <div class="search-title">
        <h1>留言列表</h1>
        <input type="text" placeholder="搜索..." class="search" v-model="search">
      </div>
      <ul>
        <li v-for="(val, index) in filteredNews" :key="index">
          <span>{{ val.createDate }}</span>
          <h3>{{ val.title }}</h3>
          <p v-rainbow>{{ val.body }}</p>
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
      news: [],
      search: ''
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
  computed: {
    filteredNews: function() {
      return this.news.filter((news) => {
        return news.title.match(this.search)
        // return this.search.test(news.title)
      })
    }
  },
  created() {
    this.getNewsList();
  },
  directives: {
    'rainbow': {
      bind(el, binding, vnode) {
        el.style.color = "#" + Math.random().toString(16).slice(2, 8)
      }
    }
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
.search-title {
  margin: 0 auto;
  width: 800px;
  overflow: hidden;
  padding: 0 20px;
  box-sizing: border-box;
}
.search-title h1 {
  float: left;
}
.search {
  float: right;
  padding: 5px 20px;
  height: 40px;
  width: 200px;
  outline: none;
  border: none;
  transition: border .3s;
  box-sizing: border-box;
  box-shadow: 5px 5px 10px #41B883;
  color: #41B883;
  font-size: 16px;
}
.search:focus {
  border: 1px solid #41B883;
}
a {
  color: #409eff;
}
a:hover {
  opacity: 0.7;
}
ul {
  clear: both;
}
ul li {
  width: 800px;
  margin: 0 auto;
  /* border: 2px solid #fff; */
  box-shadow: 0 0 20px #41B883;
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
