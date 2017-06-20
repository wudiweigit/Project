<?php
/**
*更新购物车中商品的信息
*请求参数：
  uid-用户ID，必需
  r_id-r_box中r_id，必需
  count-更新的产品数量 必须
  `如果为-1，则是在之前基础上加一，
   如果为-2，直接从购物车中将did所对应的数据清除掉
   如果为其他值，就是设置为该值
*输出结果：
* {"code":1,"msg":"succ"}//加入成功
* 或
* {"code":2,"msg":"succ"}//更新数量成功
*/


header('Content-Type:application/json');
@$uid = $_REQUEST['uid'] or die('uid required');
@$r_id = $_REQUEST['r_id'] or die('r_id required');
@$count = $_REQUEST['count'] or die('count required');

require('init.php');

//判断购物车表中是否已经存在该商品记录
$sql = "SELECT ctid FROM sg_cart WHERE userid=$uid AND r_id=$r_id";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_assoc($result);
if($row){
  if($count == -1) //之前曾经购买过该商品，则更新购买数量加1
  {
    $sql = "update sg_cart set dishCount=dishCount+1 where userid=$uid AND r_id=$r_id";
  }
  else if($count == -2)//将did所对应的数据清除掉
  {
    $sql = "DELETE FROM sg_cart WHERE r_id='$r_id'";
  }
  else //之前曾经购买过该商品，则更新购买数量为参数中的$count
  {
    $sql = "update sg_cart set dishCount='$count' where userid=$uid AND r_id=$r_id";
  }

  mysqli_query($conn,$sql);
  $output['code'] = 2;
  $output['msg'] = 'succ';
}else {     //之前从未购买过该商品，则添加购买记录，购买数量为1
  $sql = "INSERT INTO sg_cart VALUES(NULL,$uid, $r_id,1)";
  mysqli_query($conn,$sql);
  $output['code'] = 1;
  $output['msg'] = 'succ';
}

echo json_encode($output);

