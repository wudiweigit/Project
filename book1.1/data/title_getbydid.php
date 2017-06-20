<?php
header('Content-Type:application/json');

@$id = $_REQUEST['id'];

if(empty($id))
{
    echo '[]';
    return;
}

require('init.php');

//获取主体内容标题表
 $sql = "SELECT * FROM sg_title WHERE did=$id";
 $result = mysqli_query($conn, $sql);
 $titleItems = mysqli_fetch_all($result,MYSQLI_ASSOC);

//获取轮播广告条目
 $sql = "SELECT * FROM sg_carousel WHERE c_did=$id";
 $result = mysqli_query($conn, $sql);
 $carouselItems = mysqli_fetch_all($result,MYSQLI_ASSOC);

 $output  = [
    'titleItems'=>$titleItems,
    'carouselItems'=>$carouselItems
  ];

  echo json_encode($output);
?>




