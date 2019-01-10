<template>
  <div>
    <div class="personal">
      <div>
        <div class="info">
          <!-- <router-link
          :to="{name: 'Avatar'}"
          :style="{display:'inline-block', height:'100px', width: '100px'}"
        >
        <img :src="user.userAvatar">
          </router-link>-->
          <img :src="user.userAvatar" alt @click="toggleShow">
          <div class="info_details">
            <span class="name">{{ user.userName }}</span>
            <p>{{ user.userLevel }}</p>
            <p>联系电话: {{ user.phoneNumber }}</p>
          </div>
        </div>
        <ul class="setInfo" v-if="flag">
          <li @click="setChat()">发布新的聊天室</li>
          <li @click="setPhone()">完善信息</li>
          <li @click="setPwd()">修改密码</li>
          <li>帮助说明</li>
        </ul>
      </div>
      <div class="pwd" v-if="pwd.flag">
        <form action>
          <div>
            <label for>原密码</label>
            <input type="text" v-model="pwd.oldpwd">
          </div>
          <!-- <p v-if="!user.username">用户名不能为空!</p> -->
          <div>
            <label for>新密码</label>
            <input type="password" v-model="pwd.newpwd">
          </div>
          <p v-if="pwd.newpwd.length < 6 && pwd.newpwd !=''">密码长度请大于等于6位</p>
          <p v-if="pwd.newpwd == pwd.oldpwd">新密码不能与旧密码相等</p>
          <div>
            <label for>确认密码</label>
            <input type="password" v-model="pwd.repwd">
          </div>
          <p v-if="pwd.newpwd != pwd.repwd">密码不一致请重新输入!</p>
          <div class="button">
            <button type="button" @click="pwdValid()">确定</button>
            <button type="button" @click="pwdCancel()">取消</button>
          </div>
        </form>
      </div>
      <div class="phone" v-if="phone.flag">
        <form action>
          <div class="num">
            <label for>手机号</label>
            <input type="number" v-model="phone.num">
            <i class="mask"></i>
          </div>
          <p v-if="phone.valid">请输入正确的手机号!</p>
          <div class="button">
            <button type="button" @click="phoneValid()">确定</button>
            <button type="button" @click="phoneCancel()">取消</button>
          </div>
        </form>
      </div>
      <div class="chat" v-if="chat.flag">
        <form action>
          <div>
            <label for>聊天标题</label>
            <input type="text" v-model="chat.title">
          </div>
          <p v-if="!chat.title">标题不能为空</p>
          <div>
            <label for>聊天内容</label>
            <textarea name id v-model="chat.body"></textarea>
          </div>
          <p v-if="!chat.body">内容不能为空</p>
          <div class="button">
            <button type="button" @click="chatValid()">确定</button>
            <button type="button" @click="chatCancel()">取消</button>
          </div>
        </form>
      </div>
    </div>
    <div class="myUpload">
      <div class="item">
        <my-upload
          img-format="jpg"
          img-bgc="#fff"
          v-model="show"
          field="avatar"
          ki="0"
          @crop-success="cropSuccess"
          @crop-upload-success="cropUploadSuccess"
          @crop-upload-fail="cropUploadFail"
          :no-rotate="false"
          :headers="headers"
          :params="otherParams"
        ></my-upload>
      </div>
    </div>
  </div>
</template>

<script>
import qs from "qs";
import myUpload from "vue-image-crop-upload";

export default {
  data() {
    return {
      show: false,
      otherParams: {
        token: "123456798",
        name: "img"
      },
      headers: {
        smail: "*_~"
      },
      userId: this.$cookies.get("userId"),
      userLevel: this.$cookies.get("userlevel"),
      user: {},
      pwd: {
        oldpwd: "",
        newpwd: "",
        repwd: "",
        flag: false
      },
      flag: true,
      phone: {
        num: "",
        flag: false,
        valid: false
      },
      chat: {
        title: "",
        body: "",
        valid: false,
        flag: false
      }
    };
  },
  components: {
    myUpload
  },
  created() {
    this.getUser();
  },
  watch: {
    ["phone.num"](val) {
      var pattern = /^1[34578]\d{9}$/;
      if (pattern.test(val) && val.length == 11) {
        this.phone.valid = false;
      } else {
        this.phone.valid = true;
      }
    }
  },
  methods: {
    getUser() {
      this.axios.get("getUser.php?userid=" + this.userId).then(res => {
        console.log(res);
        this.user = res.data[0];
        //   console.log(this.user.userAvatar.slice(2));
        this.user.userAvatar =
          "http://www.atone.shop/dist" + this.user.userAvatar.slice(2);
        this.user.userLevel = this.user.userLevel == 0 ? "管理员" : "普通用户";
      });
    },
    setPwd() {
      this.pwd.flag = true;
      this.flag = false;
    },
    setPhone() {
      this.phone.flag = true;
      this.flag = false;
    },
    setChat() {
      if (this.userLevel == 0) {
        this.flag = false;
        this.chat.flag = true;
      } else {
        alert("您不是管理员，不能发布聊天室");
        this.chat.flag = false;
      }
    },
    pwdCancel() {
      this.pwd.flag = false;
      this.flag = true;
    },
    phoneCancel() {
      this.phone.flag = false;
      this.flag = true;
    },
    chatCancel() {
      this.chat.flag = false;
      this.flag = true;
    },
    pwdValid() {
      if (this.pwd.newpwd.length >= 6 && this.pwd.newpwd == this.pwd.repwd) {
        let obj = {
          send: 1,
          oldPassword: this.pwd.oldpwd,
          newPassword: this.pwd.newpwd,
          checkPassword: this.pwd.repwd
        };
        let data = qs.stringify(obj);
        console.log(obj, data);
        this.axios.post("password.php", data).then(res => {
          console.log(res);
          if (res.data.valid) {
            alert("密码修改成功!");
            this.flag = true;
            this.pwd.flag = false;
          } else {
            alert("原密码不正确!");
          }
        });
      } else {
        alert("请重新输入!");
      }
    },
    phoneValid() {
      if (!this.phone.valid) {
        this.axios
          .get("editUserSave.php?send=1&phoneNumber=" + this.phone.num)
          .then(res => {
            console.log(res);
            if (res.data.valid) {
              alert("修改手机号码成功!");
              this.user.phoneNumber = this.phone.num;
              this.phone.flag = false;
              this.flag = true;
            } else {
              alert("修改手机号失败!");
            }
          });
      } else {
        alert("请输入正确的手机号码!");
      }
    },
    chatValid() {
      if (this.chat.title == "" && this.chat.body == "") {
        alert("输入不合要求");
      } else {
        let obj = {
          send: 1,
          title: this.chat.title,
          body: this.chat.body
        };
        let data = qs.stringify(obj);
        console.log(data);
        this.axios
          .get("chatAddSave.php?" + data)
          .then(res => {
            console.log(res);
            if (res.data.valid) {
              alert("创建聊天室成功!");
              this.$router.push('/');
            } else {
              alert("创建聊天室失败!");
            }
          })
          .catch(err => {
            console.log(err);
          });
      }
    },
    toggleShow() {
      let { show } = this;
      this.show = !show;
    },
    cropSuccess(data, field, key) {
      if (field == "avatar") {
        this.user.userAvatar = data;
      }
      // console.log("-------- 剪裁成功 --------");
      this.upLoad();
    },
    cropUploadSuccess(data, field, key) {
      console.log("-------- 上传成功 --------");
      console.log(data);
      console.log("field: " + field);
      console.log("key: " + key);
    },
    cropUploadFail(status, field, key) {
      console.log("-------- 上传失败 --------");
      console.log(status);
      console.log("field: " + field);
      console.log("key: " + key);
      alert("上传失败");
    },
    upLoad() {
      let obj = {
        send: 1,
        userAvatar: this.user.userAvatar
      };
      let data = qs.stringify(obj);
      this.axios
        .post("avatarSave.php", data)
        .then(res => {
          console.log(res);
          if (res.data.valid) {
            alert(res.data.message);
            this.$router.push("/profile");
          } else {
            alert(res.data.message);
          }
        })
        .catch(err => {
          console.log(err);
        });
    }
  }
};
</script>

<style scoped>
.personal {
  width: 600px;
  background-color: #d0fce8;
  min-height: 400px;
  margin: 0 auto;
  padding: 30px;
  box-shadow: inset 20px 20px 50px #fff;
}
.info {
  background-color: #fff;
  display: flex;
  justify-content: space-between;
  border-radius: 10px;
  padding: 20px;
}
.info img {
  width: 100px;
  height: 100px;
  box-shadow: 0 0 20px #41b883;
  border-radius: 50%;
  cursor: pointer;
}
.info_details {
  margin-left: 20px;
  flex: 1;
  padding-top: 5px;
}
.info_details span {
  display: inline-block;
  font-size: 18px;
  color: #41b883;
  margin-bottom: 10px;
}
.info_details p {
  margin: 5px 0;
}
.setInfo {
  background-color: #fff;
  margin-top: 30px;
  padding: 20px;
}
.setInfo li {
  font-size: 18px;
  border-bottom: 1px solid #ccc;
  width: 300px;
  padding: 20px 0;
  margin: 10px auto;
  cursor: pointer;
}
.setInfo li:hover {
  color: #41b883;
}
form {
  margin-top: 30px;
  background: #fff;
  padding: 20px;
}
form > div {
  margin: 20px 0;
  text-align: center;
}
form img {
  display: block;
  margin: 20px auto 0;
}
label {
  color: #41b883;
  font-size: 18px;
  margin-bottom: 20px;
  display: block;
}
input,
textarea {
  width: 250px;
  padding: 10px;
  border: none;
  outline: none;
  border-radius: 5px;
  border: 1px solid #41b883;
}
textarea {
  min-height: 200px;
}
input[type="file"] {
  width: auto;
}
input:focus,
textarea:focus {
  border: 1px solid #123456;
}
form p {
  text-align: center;
  color: brown;
}
.button {
  text-align: center;
}
button {
  padding: 10px 20px;
  border: none;
  outline: none;
  border-radius: 5px;
  background-color: #fff;
  color: #41b883;
  border: 1px solid #41b883;
  cursor: pointer;
  font-size: 16px;
  font-weight: bold;
  margin: 0 10px;
}
button:hover {
  background-color: #41b883;
  color: #fff;
}
.num {
  position: relative;
}
.phone i {
  display: inline-block;
  position: absolute;
  left: 390px;
  top: 52px;
  width: 20px;
  height: 20px;
  background-color: #fff;
}
.myUpload {
  position: relative;
}
.myUpload label {
  display: block;
  margin-bottom: 10px;
}
.wrap {
  margin-bottom: 5px;
}
.btn {
  display: block;
  margin: 30px auto 10px auto;
  width: 120px;
  height: 40px;
  font-size: 14px;
  line-height: 40px;
  text-align: center;
  background-color: rgba(0, 0, 0, 0.08);
  cursor: pointer;
}
.avatar {
  display: block;
  width: 200px;
  margin: 10px auto;
}
</style>
