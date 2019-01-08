<?php
   //     if (!isset($_COOKIE["username"])){
   //      echo json_encode(
   //      array('vaild' => false,'isLogin' =>'您未登陆'),JSON_UNESCAPED_UNICODE
   //      );
   //     exit();
   //  }
   include 'conn.php';
   
   if(isset($_GET['userid']) AND is_numeric($_GET['userid']) AND $_GET['userid']!=""){
      $result = mysqli_query($conn,'SELECT userId,userName,userAvatar,userLevel,phoneNumber FROM users WHERE userId='.$_GET['userid']);
   }else{
      $result = mysqli_query($conn,'SELECT  userId,userName,userAvatar,userLevel,phoneNumber  FROM users');
   }
   
   $users = mysqli_fetch_all($result,MYSQLI_ASSOC);

   echo json_encode($users);

