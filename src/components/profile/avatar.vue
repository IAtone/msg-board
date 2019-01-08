<template>
  <div class="myUpload">
    <div class="item">
      <a class="btn" @click="toggleShow">设置头像</a>
      <img class="avatar" v-if="avatarUrl" :src="avatarUrl" v-show="true" style="display: none;">
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
</template>

<script>
import myUpload from "vue-image-crop-upload";
import qs from "qs";
export default {
  data() {
    return {
      show: false,
      avatarUrl: null,
      otherParams: {
        token: "123456798",
        name: "img"
      },
      headers: {
        smail: "*_~"
      }
    };
  },
  created() {
    this.toggleShow()
  },
  components: {
    myUpload
  },
  methods: {
    toggleShow() {
      let { show } = this;
      this.show = !show;
    },
    cropSuccess(data, field, key) {
      if (field == "avatar") {
        this.avatarUrl = data;
      }
      console.log("-------- 剪裁成功 --------");
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
      alert('上传失败')
    },
    upLoad() {
      let obj = {
        send: 1,
        userAvatar: this.avatarUrl
      };
      let data = qs.stringify(obj);
      this.axios
        .post("avatarSave.php", data)
        .then(res => {
          console.log(res);
          if (res.data.valid) {
            alert(res.data.message)
            this.$router.push("/profile");
          } else {
            alert(res.data.message)
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
label {
  display: block;
  margin-bottom: 10px;
}

.myUpload {
  position: relative;
  text-align: center;
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
