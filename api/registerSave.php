<?php
  include 'conn.php';
  $valid = true;
  $message = '';

  if(isset($_POST['send']) && $_POST['send']==1){
         
    if(isset($_POST['userAvatar']) && $_POST["userAvatar"]!=""){
         $userAvatar = $_POST['userAvatar'];
         if(preg_match('/^(data:\s*image\/(\w+);base64,)/',$userAvatar,$res)){
             //获取一个图片类型
             $type = $res[2];
            //  图片保存路径
            $new_Avatar = '../upload/'.date('Ymd',time()).'/';
            // 判断文件是否存在
            if(!file_exists($new_Avatar)){
                mkdir($new_Avatar,0777,true);
            }
            // 设置图片名称
            $new_Avatar = $new_Avatar.time().'.'.$type;
            // 写入
            if(file_put_contents($new_Avatar,base64_decode(str_replace($res[1],'',$userAvatar)))){
                $message = '头像移入成功';
            }else{
                $valid = false;
                $message = '头像移入失败';
            }
         }
    }else{
        $valid = false;
        $message = '头像不能为空，必须输入';
    }

    if(isset($_POST['username']) && $_POST['username']!=""){
        $username = $_POST['username'];

            $regexp = "/^[\x7f-\xff]+$/";

          if (!preg_match($regexp,$username)){
             $message = "用户名必须全部由中文汉字组成";
             $valid   = false;
            }

    }else{
        $valid = false;
        $message = '帐号不能为空，必须输入';
    }
      
    if(isset($_POST['password']) && $_POST['password']!=""){
        $password = sha1($_POST['password']);
    }else{
        $valid = false;
        $message = '密码不能为空, 必须输入的';
    }

    if($valid){
         $result = mysqli_query($conn,"SELECT * FROM users WHERE userName = '$username'");
         if(mysqli_num_rows($result) == 0){

             $sql = "INSERT INTO users(userName,passWord,userAvatar)VALUES('$username','$password','$new_Avatar')";

             if(mysqli_query($conn,$sql)){
                $message = '注册成功';
             }else{
                $valid = false;
                $message = '注册失败'.$sql;
             }

         }else{
            $valid = false;
            $message = '用户名已经存在!请重新选择!';
         }
    }else{
        $valid = false;
        $message = $message;
    }


  }else{
    $valid=false;
    $message = '接口地址来源非法！';
  }



  echo json_encode(
    array('valid'=>$valid,'message'=>$message),JSON_UNESCAPED_UNICODE
);