<?php
/**根据用户id查询订单数据**/
header('Content-Type:application/json');

$output = [];

@$userid = $_REQUEST['userid'];

if(empty($userid)){
    echo "[]"; //若客户端未提交用户id，则返回一个空数组，
    return;    //并退出当前页面的执行
}

//访问数据库
require('init.php');
//接收            订单编号,        用户编号,         联系电话,     订单地址,         订单总价,          收货方用户名,         下单时间,          订单详情表产品id,         订单详情表购买数量,         订单详情表产品单价,          书名,                 书缩略图
$sql = "SELECT sg_order.oid,sg_order.userid,sg_order.phone,sg_order.addr,sg_order.totalprice,sg_order.user_name,sg_order.order_time,sg_orderdetails.dishCount,sg_orderdetails.r_id,sg_orderdetails.r_price,rack_table.r_title,rack_table.r_imgsm FROM sg_order,sg_orderdetails,rack_table WHERE sg_order.oid = sg_orderdetails.oid and sg_orderdetails.r_id = rack_table.r_id and sg_order.userid='$userid'";

$result = mysqli_query($conn, $sql);

$output['data'] = mysqli_fetch_all($result, MYSQLI_ASSOC);

echo json_encode($output);
?>