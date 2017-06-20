<?php
header('content-Type:application/json');
@$start = $_REQUEST['start'];
if(empty($start)){
    $start=0;
}
$count = 8;
require('init.php');
$sql = "SELECT * FROM rack_table LIMIT $start,$count";

$result=mysqli_query($conn,$sql);
$output=[];
while(true){
    $row=mysqli_fetch_assoc($result);
    if(!$row){
        break;
    }
    $output[]=$row;
}
echo json_encode($output);
?>



