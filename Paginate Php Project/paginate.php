<!-- Arya paginate Code Date 06-Apr-2022 09:09PM -->

<?php

// datebase connect krne ke liye 
$con = mysqli_connect('localhost' , 'root' , '' , 'test');

$per_page = 5;

// URL se data ko Get Krke Start Me store krna 
if(isset ($_GET['start'])){
    $start = $_GET['start'];
    $start--;
    $start = $start * $per_page;
}

// niche number dikhane ke liye Code 
$record = mysqli_num_rows(mysqli_query($con, "select id,Name from pagination"));
$page = ceil($record/$per_page);

// limited Data ko Call Krne ke liye Code 
$sql = "select id,rollNumber,Name,Branch,City from pagination limit $start, $per_page";
$res = mysqli_query($con, $sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>pagination</title>
</head>
<body>


<style>
table, th, td {
  border:1px solid black;
}
</style>


 <!-- data ko database se fatch krne ke liye  -->
<table style="width:100%">
  <tr>
    <th>Roll Number</th>
    <th>Name</th>
    <th>Branch</th>
    <th>City</th>
  </tr>
        <?php while ($row = mysqli_fetch_assoc($res)) {?>
            <tr>
                <td><?php echo $row['rollNumber'] ?> </td>
                <td><?php echo $row['Name'] ?> </td>
                <td><?php echo $row['Branch'] ?> </td>
                <td><?php echo $row['City'] ?> </td>
            </tr>
        <?php } ?>
</table>
        

    <?php for ($i=1; $i<=$page; $i++) { ?>

            <!-- URL me page ke number ko show krne ke liye  -->
             <a href="?start=<?php echo $i ?>" > <?php echo $i ?> </a>  
        <?php } ?>
</body>
</html>