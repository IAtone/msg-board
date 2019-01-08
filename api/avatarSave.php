<?php
  include 'conn.php';
  $valid = true;
  $message = '';


       if (!isset($_COOKIE["username"])){
        echo json_encode(
        array('vaild' => false,'isLogin' =>'您未登陆'),JSON_UNESCAPED_UNICODE
        );
       exit();
    }



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


    if($valid){

             $sql = "UPDATE users SET userAvatar='$new_Avatar' WHERE userId=".$_COOKIE['userId'];

             if(mysqli_query($conn,$sql)){
                $message = '头像修改成功';
             }else{
                $valid = false;
                $message = '头像修改失败'.$sql;
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