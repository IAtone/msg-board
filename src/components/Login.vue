<template>
  <div class="login">
    <h1>用户登录</h1>
    <form action>
      <div>
        <label for>用户名</label>
        <input type="text" v-model="user.username">
      </div>
      <div>
        <label for>密码</label>
        <input type="password" v-model="user.password">
      </div>
      <div class="button">
        <button type="button" @click="submit()">登录</button>
      </div>
      <p v-if="flag">用户名或密码错误!</p>
    </form>
  </div>
</template>
    
<script>
import qs from "qs";
export default {
  data() {
    return {
      user: {
        send: 1,
        username: "",
        password: ""
      },
      userId: 1,
      flag: false
    };
  },
  methods: {
    submit() {
      // var param = new URLSearchParams();
      // param.append("vCode", this.user);
      // console.log(param)
      var data = qs.stringify(this.user);      
      console.log(data)
      this.axios
        .post("loginSave.php", data)
        .then(res => {
          console.log(res);
          if (res.data.valid) {
            alert('登录成功')
            this.$cookies.set('username', res.data.user[0])
            this.$cookies.set('userId', res.data.user[1])
            this.$cookies.set('userlevel', res.data.user[2])
            this.$router.push('/')
          } else {
            this.flag = true;
          }
        })
        .catch(err => {
          console.log(err);
        });

      // var data = qs.stringify(this.user);      
      // this.axios({
      //   method: "post",
      //   url: "loginSave.php",
      //   data: data
      // })
      //   .then(res => {
      //     console.log(res.data);
      //     if (res.data.valid) {
      //       this.$cookies.set("username", this.user.username, 60 * 60);
      //       this.$router.push("/");
      //       this.getUserId();
      //     } else {
      //       this.flag = true;
      //     }
      //   })
      //   .catch(err => {
      //     console.log(err);
      //   });
    }
    // getUserId() {
    //   this.axios.get("getchatAll.php").then(res => {
    //     let data = res.data.message;
    //     // console.log(this.$cookies.get("username"));
    //     // console.log(data)
    //     data.forEach(val => {
    //       if (this.userId == 1) {
    //         if (val.userName == this.$cookies.get("username")) {
    //           this.userId = val.userId;
    //           // console.log(this.userId);
    //           this.$cookies.set("userid", this.userId);
    //           console.log(this.$cookies.get("userid"));
    //           return;
    //         }
    //       }
    //     });
    //   });
    // }
  }
};
</script>

<style scoped>
.login {
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
input {
  width: 250px;
  padding: 10px;
  border: none;
  outline: none;
  border-radius: 5px;
  border: 1px solid #41b883;
}
input[type="file"] {
  width: auto;
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
