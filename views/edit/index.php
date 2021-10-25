<link rel="stylesheet" href="http://localhost/test_work1/styles/css/style.css">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update</title>
    <br>

</head>
<body>
<br>
<br>
<?php
$id=$_GET["id"];
$page=$_GET["page"];
echo "<a href='http://localhost/test_work1/show/?id=$id&page=$page'>Назад</a>";
?>
    <div class="solid-yellow">
        <form  method="post" name="edit">
            Title:<input type="text" name="Title"><br>
            Author:<input type="text" name="author"><br>
            Summary:<textarea  name="summary"></textarea><br>
            Full_content:<textarea  name="full_content"></textarea><br>
            <input type="submit" name="Update message">
        </form>
    </div>
</body>
</html>

