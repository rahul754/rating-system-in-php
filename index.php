<?php 
include 'init.php';

$query = $db->query("

	SELECT  rating.id, rating.title , AVG(title_rating.rating) AS rat
	FROM rating
	LEFT JOIN title_rating
	ON rating.id = title_rating.title_id
	GROUP BY rating.id

	");

$article = [];

while ($row= $query-> fetch_object()) {
	$article[] = $row;
}

 ?>


<!DOCTYPE html>
<html>
<head>
	<title>
		rating article

	</title>
</head>
<body>
<?php foreach ($article as $val) :?>
	<div class=""><h3><a href="artical.php?id=<?php echo $val->id; ?>"><?php echo $val->title; ?></a></h3></div>
	<div class=""><h5>Rating : <?php echo $val->rat; ?>/5</h5></div>
<?php endforeach ?>



</body>
</html>