<link rel="stylesheet" href="http://localhost/test_work1/styles/css/style.css">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<br>
<br>
<br>
<a href="?/" >Add mess</a>
<?php
    if (isset($_GET["/"])) {
        echo '<div class="solid-yellow">
                    <form  method="post" name="message">
                        Title:<input type="text" name="Title"><br>
                        Author:<input type="text" name="author"><br>
                        Summary:<textarea  name="summary"></textarea><br>
                        Full_content:<textarea  name="full_content"></textarea><br>
                        <input type="submit" name="Sent message">
                    </form> 
              </div>';
    }
?>
</body>
</html>
