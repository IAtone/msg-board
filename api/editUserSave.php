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
    
    if(isset($_GET['phoneNumber']) && strlen($_GET['phoneNumber'])==11){
           $phoneNumber = $_GET['phoneNumber'];
    }else{
                $valid = false;
                $message = '手机号码不能为空或必须是11位';
    }


  if(isset($_GET['send']) && $_GET['send']==1){


    if($valid){

             $sql = "UPDATE users SET phoneNumber='$phoneNumber' WHERE userId=".$_COOKIE['userId'];

             if(mysqli_query($conn,$sql)){
                $message = '信息修改成功';
             }else{
                $valid = false;
                $message = '信息修改失败'.$sql;
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