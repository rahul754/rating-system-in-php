<?php 

include 'init.php';

if(isset($_GET['artical_id'], $_GET['rating'])){

    $artical_id = (int)$_GET['artical_id'];
    $rating = (int)$_GET['rating'];


    if(in_array($rating, [1,2,3,4,5])){

    $exists = $db->query("SELECT id FROM rating WHERE id={$artical_id}")->num_rows ? true : false;
    
    if($exists){
     $db -> query("INSERT INTO `title_rating`(`id`, `title_id`, `rating`) VALUES ('','$artical_id','$rating')");
    }	

    }
    header("Location:artical.php?id=".$artical_id);

}

?>