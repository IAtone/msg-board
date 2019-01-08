<?php
   include 'conn.php';
   $result = mysqli_query($conn,'SELECT * FROM chatList');
   $users = mysqli_fetch_all($result,MYSQLI_ASSOC);
   echo json_encode($users,JSON_UNESCAPED_UNICODE);