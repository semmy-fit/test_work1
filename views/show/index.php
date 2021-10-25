<link rel="stylesheet" href="http://localhost/test_work1/styles/css/mess_style.css">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show message</title>
</head>
<body>
<?php
if(isset($_GET["id"]) ) {
    $t=$_GET["id"];
    echo "<div class='solid-ok'>
                <form  method='post' name='message'>
                    Author:<input type='text' name='Author'><br>
                    Comment:<textarea  name='Comment'></textarea><br>
                    id_message:<input type='text' name='id_message' value='$t'>
                    <input type='submit' name='Sent message'>
                </form>
          </div>";
}
?>
</body>
</html>
