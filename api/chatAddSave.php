<?php

    // if ($_COOKIE["userLevel"]!=0){
    //     echo json_encode(
    //     array('vaild' => false,'isLogin' =>'权限不足'),JSON_UNESCAPED_UNICODE
    //     );
    //    exit();
    // }

  include 'conn.php';
  $valid = true;
  $message = '';

  if(isset($_GET['send']) && $_GET['send']==1){
         

    if(isset($_GET['title']) && $_GET['title']!=""){
        $title = $_GET['title'];
    }else{
        $valid = false;
        $message = '聊天室名称不能为空，必须输入';
        
    }
      
    if(isset($_GET['body']) && $_GET['body']!=""){
        $body = $_GET['body'];
    }else{
        $valid = false;
        $message = '内容不能为空, 必须输入的';
    }


    $createDate = DATE;


    if($valid){
         $result = mysqli_query($conn,"SELECT title FROM chatList WHERE title = '$title'");
         if(mysqli_num_rows($result) == 0){

             $sql = "INSERT INTO chatList(title,body,createDate)VALUES('$title','$body','$createDate')";

             if(mysqli_query($conn,$sql)){
                $message = '聊天室创建成功';
             }else{
                $valid = false;
                $message = '聊天室创建失败';
             }

         }else{
            $valid = false;
            $message = '聊天室名称已经存在!请重新选择!';
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