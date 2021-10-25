<?php


class Edit
{

    public function update_mess()
    {
        try {
            $pdo = new PDO("mysql:host=localhost;dbname=test_work1", "root", "admin");
            if (!empty($_POST["Title"]) && !empty($_POST["author"]) && !empty($_POST["summary"]) && !empty($_POST["full_content"])) {

                $sql ="UPDATE message SET Title=:title,author=:author,summary=:summary, full_content=:full_content WHERE id=:id";
                $statement = $pdo->prepare($sql);
                $statement->bindValue(":title", $_POST["Title"]);
                $statement->bindValue(":author", $_POST["author"]);
                $statement->bindValue(":summary", $_POST["summary"]);
                $statement->bindValue(":full_content", $_POST["full_content"]);
                $statement->bindValue(":id", $_GET["id"]);
                $statement->execute();

                if (isset( $_GET['id']))
                    {
                        echo  $d=$_GET['id'];
                       echo "<script>window.location = 'http://localhost/test_work1/show/index/?id=$d';</script>";

                        }
                else { echo  "error";}
                        //$x=$_GET["id"];
                        //echo "Worked";
            }

        } catch (PDOException $e) {
            echo "Database error: " . $e->getMessage();
        }

    }
}
