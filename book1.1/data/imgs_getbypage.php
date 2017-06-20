<?php
header('Content-Type:application/json');

@$mid = $_REQUEST['mid'];

if(empty($mid))
{
    echo '[]';
    return;
}

require('init.php');

$sql = "SELECT sg_picture.img_sm,sg_picture.p_did FROM sg_picture WHERE p_did=$mid";

$result = mysqli_query($conn,$sql);

$output = [];
$row =mysqli_fetch_all($result,MYSQLI_ASSOC);

if(empty($row))
{
    echo '[]';
}
else
{
    $output[] = $row;
    echo json_encode($output);
}
?>
