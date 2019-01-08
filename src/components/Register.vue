<template>
  <div class="register">
    <h1>用户注册</h1>
    <form action>
      <div class="avatar">
        <input type="file" accept="image/*" class="uploadFile" @change="upload($event)">
        <!-- <input type="hidden" :value="baseData.base" > -->
        <img :src="baseData.src" width="100" height="100">
        <!-- <input type="hidden" v-model="baseData.src"> -->
      </div>
      <div>
        <label for>用户名</label>
        <input type="text" v-model="user.username">
      </div>
      <p v-if="!user.username">用户名不能为空!</p>
      <div>
        <label for>密码</label>
        <input type="password" v-model="user.password">
      </div>
      <p v-if="user.password.length < 6 && user.password !=''">密码长度请大于等于6位</p>
      <div>
        <label for>确认密码</label>
        <input type="password" v-model="user.repassword">
      </div>
      <p v-if="user.password != user.repassword">密码不一致请重新输入!</p>
      <div class="button">
        <button type="button" @click="submit()">注册</button>
      </div>
    </form>
  </div>
</template>
    
<script>
import qs from "qs";
export default {
  data() {
    return {
      baseData: {
        src: require("../assets/logo.png"),
        flag: false
      },
      user: {
        username: "",
        password: "",
        repassword: ""
      }
    };
  },
  methods: {
    upload(e) {
      var that = this;
      var file = e.target.files[0];
      var reader = new FileReader(); //本地预览
      reader.readAsDataURL(file); //Base64
      reader.onload = function() {
        console.log(this);
        that.baseData.src = reader.result;
      };
    },
    submit() {
      var obj = {
        send: 1,
        userAvatar: this.baseData.src,
        username: this.user.username,
        password: this.user.password
      };
      var data = qs.stringify(obj);
      console.log(data);
      this.axios
        .post("registerSave.php", data)
        .then(res => {
          console.log(res);
          if (res.data.valid) {
            alert("注册成功!");
          } else {
            alert("注册失败,请完善信息!");
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
.register {
  width: 400px;
  background-color: #d0fce8;
  min-height: 400px;
  margin: 0 auto;
  padding: 30px;
  box-shadow: inset 20px 20px 50px #fff;
}
form {
  background: #fff;
  padding: 20px;
}
form > div {
  margin: 20px 0;
  text-align: center;
}
form .avatar {
  position: relative;
  width: 120px;
  height: 120px;
  box-shadow: 0 0 20px #aaa;
  overflow: hidden;
  margin: 0 auto;
  cursor: pointer;
}
.avatar img {
  position: absolute;
  left: 0;
  right: 0;
  width: 100%;
  min-height: 120px;
}
.uploadFile {
  position: absolute;
  opacity: 0;
  width: 100%;
  height: 100%;
  z-index: 9;
}
label {
  color: #41b883;
  font-size: 18px;
  margin-bottom: 20px;
  display: block;
}
input {
  width: 250px;
  padding: 10px;
  border: none;
  outline: none;
  border-radius: 5px;
  border: 1px solid #41b883;
}
input:focus {
  border: 1px solid #123456;
}
p {
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
}
button:hover {
  background-color: #41b883;
  color: #fff;
}
</style>
