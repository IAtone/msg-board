<?php
  include 'conn.php';
  $valid = true;
  $message = '';
  
        // if (!$_COOKIE["username"]){
        //     echo json_encode(
        //     array('vaild' => false,'isLogin' =>'您未登陆'),JSON_UNESCAPED_UNICODE
        //     );
        //    exit();
        // }


            if(isset($_POST['userId']) && $_POST['userId']!=""){
                $userId = $_POST['userId'];
            }else{
                $valid = false;
                $message = '您的登陆信息失效,请重新登陆';
                
            }
            
            if(isset($_POST['chatId']) && $_POST['chatId']!=""){
                $chatId = $_POST['chatId'];
            }else{
                $valid = false;
                $message = '聊天室唯一ID丢失，请退出重新进入';
            }
                
            if(isset($_POST['content']) && $_POST['content']!=""){
                $content = htmlspecialchars($_POST['content']);
                // htmlentities
            }else{
                $valid = false;
                $message = '聊天内容不能为空';
            }       

            $createDate = DATETIME;

            if($valid){


                $sql = "INSERT INTO chatContent(userId,chatId,chatBody,createTime)VALUES('$userId','$chatId','$content','$createDate')";

                if(mysqli_query($conn,$sql)){
                   $message = '信息发布成功';
                }else{
                   $valid = false;
                   $message = '信息布失败';
                }


            }

  
  echo json_encode(
    array('valid'=>$valid,'message'=>$message),JSON_UNESCAPED_UNICODE
);