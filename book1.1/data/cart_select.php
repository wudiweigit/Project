<?php
/**
*查询指定用户的购物车内容
*请求参数：
  uid-用户ID，必需
*/

header('Content-Type:application/json');

@$uid = $_REQUEST['uid'] or die('uid required');

require('init.php');

$output['uid'] = $uid;

$sql = "SELECT sg_cart.ctid,sg_cart.r_id,sg_cart.dishCount,rack_table.r_title,rack_table.r_imgsm,rack_table.r_price FROM rack_table,sg_cart WHERE sg_cart.r_id=rack_table.r_id AND sg_cart.userid='$uid'";
$result = mysqli_query($conn,$sql);
$output['data'] = mysqli_fetch_all($result, MYSQLI_ASSOC);


echo json_encode($output);
