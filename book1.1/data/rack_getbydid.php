<?php
header('Content-Type:application/json');

@$rid = $_REQUEST['rid'];

if(empty($rid))
{
    echo '[]';
    return;
}

require('init.php');

//获取主体内容标题表
 $sql = "SELECT * FROM rack_table WHERE r_id=$rid";
 $result = mysqli_query($conn, $sql);
 $r_tableItems = mysqli_fetch_all($result,MYSQLI_ASSOC);

//获取轮播广告条目
 $sql = "SELECT * FROM r_carousel WHERE r_did=$rid";
 $result = mysqli_query($conn, $sql);
 $r_carouselItems= mysqli_fetch_all($result,MYSQLI_ASSOC);

 $output  = [
    'r_tableItems'=>$r_tableItems,
    'r_carouselItems'=> $r_carouselItems
  ];

  echo json_encode($output);
?>




