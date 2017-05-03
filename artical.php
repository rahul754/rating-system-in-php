<?php 
include 'init.php';

$result = null ;


if(isset($_GET['id'])){

$id = (int)$_GET['id'];

$result = $db->query("
	SELECT  rating.id, rating.title , AVG(title_rating.rating) AS rat
	FROM rating
	LEFT JOIN title_rating
	ON rating.id = title_rating.title_id
	where rating.id={$id}
    ")->fetch_object();

}

 ?>

 <!DOCTYPE html>
 <html>
 <head>
 	<title>Article</title>
 </head>
 <body>

 <?php if($result): ?>
 <div>
 	this is Artical  "<?php echo $result->title; ?>".
    <div> Rating : <?php echo round($result->rat); ?>/5</div>
    <div>
    	Rate this article :
    	<?php foreach (range(1,5) as $range):?>
         <a href="rate.php?rating=<?php echo $range; ?>&artical_id=<?php echo $result->id; ?>"><?php echo $range; ?></a>
    	<?php endforeach; ?>
    </div>
 </div>

 <?php endif; ?>
 </body>
 </html>