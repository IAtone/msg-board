<template>
  <div class="newview">
    <h1 v-if="newsContent.title">{{ newsContent.title }}</h1>
    <h1 v-else>我很神秘</h1>
    <p class="conBody" v-if="newsContent.body">{{ newsContent.body }}</p>
    <p class="conBody" v-else>你是第一个进来的,等你来发现秘密!</p>
    <div class="edit_container">
      <quill-editor v-model="content" ref="myQuillEditor" :options="editorOption" class="quill"></quill-editor>
      <div class="button">
        <button @click="publish()">发布</button>
      </div>
    </div>
    <section class="hotCom">
      <h5 class="hTitle">热门评论</h5>
      <div class="com" v-for="(val, index) in newsView" :key="index">
        <figure>
          <img v-if="val.userAvatar != null" :src="userAvatar + val.userAvatar.slice(2)">
          <img v-else src="https://tvax4.sinaimg.cn/default/images/default_avatar_female_50.gif">
        </figure>
        <aside class="user_info">
          <blockquote>
            <strong>{{ val.userName }}</strong>
            <p>
              <span>{{ val.createTime }}</span>
            </p>
            <div>
              <span>
                <span class="lm"></span>
                <em></em>
              </span>
              <span class="lm"></span>
            </div>
          </blockquote>
          <article v-html="val.chatBody"></article>
        </aside>
      </div>
    </section>
    <div class="button">
      <button @click="onLoadMore()" v-if="flag && comLen != 0">加载更多{{comLen}}</button>
      <button v-else>不能再点了哦！</button>
    </div>
  </div>
</template>

<script>
import { quillEditor } from "vue-quill-editor"; //调用编辑器
import "quill/dist/quill.core.css";
import "quill/dist/quill.snow.css";
import "quill/dist/quill.bubble.css";
import qs from "qs";

export default {
  name: "newview",
  components: {
    quillEditor
  },
  data() {
    return {
      id: this.$route.params.id,
      newsView: [],
      newsContent: {},
      start: 0,
      end: 10,
      comLen: 0,
      flag: true,
      num: 1,
      userAvatar: "http://www.atone.shop/dist",
      editorOption: {},
      content: '',
      userId: this.$cookies.get('userId')
    };
  },
  // computed: {
  //   editor() {
  //     return this.$refs.myQuillEditor.quill;
  //   }
  // },
  created() {
    this.getDetails(this.start, this.end);
    // this.getUserId();
  },
  methods: {
    getDetails(start, end) {
      this.axios
        .get("getchatAll.php?chatId=" + this.id)
        .then(res => {
          // console.log(res.data)
          this.comLen = res.data.message.length - this.num * 10;
          if (this.comLen < 10) {
            this.newsView = res.data.message.slice(
              start,
              end + this.comLen + 1
            );
            this.flag = false;
          } else {
            this.newsView = res.data.message.slice(start, end + 1);
          }
          this.newsContent = res.data.message[0];
        })
        .catch(err => {
          console.log(err);
        });
    },
    onLoadMore() {
      let more = 10;
      this.end += more;
      if (this.comLen < 10) {
        this.flag = false;
      } else {
        this.num++;
      }
      this.getDetails(0, this.end);
    },
    publish() {
     if ( this.$cookies.get('username') ) {
        let obj = {
        chatId: this.id,
        content: this.content,
        userId: this.userId
      };
      console.log(obj.content)
      let data = qs.stringify(obj);
      console.log(data);
      this.axios
        .post("messageAdd.php", data)
        .then(res => {
          if (res.data.valid) {
            alert("信息发布成功!");
            this.getDetails(0, this.end + 1);
            console.log(res.data);
          } else {
            alert(res.data.message);
            console.log(res.data);
          }
        })
        .catch(err => {
          console.log(err);
        });
     } else {
       alert('请先登录再发送留言!')
     }
    }
  }
};
</script>

<style scoped>
.newview {
  width: 800px;
  margin: 0 auto;
  background: #e3e4e8;
  overflow: hidden;
  padding-top: 20px;
}
p.conBody {
  color: #41b883;
  font-size: 16px;
  padding: 0 20px;
}
/* h1 {
  text-align: center;
  color: #41b883;
  width: 200px;
  background-color: #fff;
  margin: 0 auto 20px;
  padding: 10px;
  box-shadow: 5px 5px 10px #41b883;
  box-sizing: border-box;
} */
.hTitle {
  font-size: 20px;
  letter-spacing: 0.2em;
  text-indent: 1em;
  margin: 20px 0 10px;
}
.hotCom .com {
  display: flex;
  margin: 0 20px;
  padding-top: 20px;
  border-bottom: 1px solid #ccc;
}

.hotCom .com:last-child {
  border: none;
}

.hotCom figure {
  border-radius: 50%;
  margin-right: 10px;
  width: 40px;
  height: 40px;
}

.hotCom figure img {
  width: 100%;
  height: 100%;
  border-radius: 50%;
  box-shadow: 0 0 10px #41b883;
}

.hotCom .user_info {
  flex: 1;
  padding-bottom: 20px;
  width: 0;
  position: relative;
}

.hotCom strong {
  font-size: 17px;
  color: #1a1a1a;
  vertical-align: middle;
  cursor: pointer;
  font-weight: 400;
}
article {
  color: #666;
}

.hotCom p span:nth-child(1) {
  padding-right: 10px;
}

.hotCom .user_info div {
  height: 20px;
  text-align: right;
  position: absolute;
  left: 0;
  top: 0;
  bottom: 0;
  right: 0;
  margin: 0 auto;
}

.hotCom .user_info div .lm {
  font-size: 15px;
  color: #888;
  width: 20px;
  height: 20px;
  display: inline-block;
  font-style: normal;
  background: url(../assets/msg.png) center center no-repeat;
  background-size: 20px 20px;
}

.hotCom .user_info div > span:nth-child(1) {
  margin-right: 10px;
}

.hotCom .user_info div span {
  vertical-align: middle;
}

.hotCom .user_info div span .lm {
  background: url(../assets/like.png) center center no-repeat;
  background-size: 20px 25px;
}

.hotCom .user_info div em {
  font-size: 15px;
  color: #888;
  font-style: normal;
  vertical-align: middle;
}
.user_info > p {
  font-size: 14px;
  color: #1a1a1a;
}
.button {
  text-align: center;
}
button {
  border: none;
  outline: none;
  padding: 10px;
  color: #fff;
  background-color: #41b883;
  cursor: pointer;
  font-size: 16px;
  margin: 20px auto;
  box-shadow: inset 0 0 20px #fff;
  font-weight: bold;
}
.edit_container {
  margin-top: 50px;
}
</style>
