<link rel="stylesheet" href="http://localhost/test_work1/styles/css/show_style.css">
<?php
class Show
{
    public function  getMess()
    {
        try {
            $pdo = new PDO("mysql:host=localhost;dbname=test_work1", "root", "admin");
            $id=$_GET['id'];
            $sql='SELECT * FROM message WHERE Id=:id';
            $state=$pdo->prepare($sql);
            $state->bindParam(":id",$id);
            $state->execute();
            $i = 0;
            $page=$_GET["page"];
            while ($row = $state->fetch()) {
                //echo "<div style='border-style: solid; border-color: black; width:12%; height:114px;  margin-bottom: 30px; border-radius: 10px'>";
                echo "<div class='mine messages'>";
                echo  "<div class='message'>
                             <h4 style='margin-top: -2px'>Заголовок: ". $row['Title']."</h4><hr style='margin-top: -20px'> 
                             <h4 style='margin-top: -2px'>Автор: ". $row['Author']."</h4>
                             <h3 style='margin-top: -12px;'>Краткое содержание :". $row['summary']."</h3> 
                             <h3 style='margin-top: -12px;'>Полное сообщение :". $row['full_content']."</h3> 
                             <a style='float: right; margin-right: 10px; margin-top: -20px' href='http://localhost/test_work1/edit/?id=$id&page=$page'>Edit</a>
                      
                       </div>";
                echo "</div>";
               // echo  "</div>";
                $i++;
            }
        }
        catch (PDOException $e) {
            echo "Database error: " . $e->getMessage();
        }
    }

    public  function insertComment()
    {
        try {
            $pdo = new PDO("mysql:host=localhost;dbname=test_work1", "root", "admin");

            if(!empty($_POST["Author"]) && !empty($_POST["Comment"] && !empty($_POST["id_message"]))) {
                $sql = "INSERT INTO commetns(Author,Comment,id_message,Time,Date) VALUES (:author,:comment,:id,:tim,:dat)";
                $statement = $pdo->prepare($sql);
                $statement->bindParam(":author", $_POST["Author"]);
                $statement->bindParam(":comment", $_POST["Comment"]);
                $statement->bindParam(":id", $_POST["id_message"]);
                date_default_timezone_set('Etc/GMT-7');
                $tim = date("H:i:s");
                $statement->bindParam(":tim", $tim);
                $dat = date("Y-m-d");
                $statement->bindParam(":dat", $dat);
                $statement->execute();

                }

        }
        catch (PDOException $e) {
            echo "Database error: " . $e->getMessage();
        }
    }
    public function  getComment()
    {
        try {
            $pdo = new PDO("mysql:host=localhost;dbname=test_work1", "root", "admin");
            $id=$_GET["id"];
            $result = $pdo->prepare('SELECT * FROM commetns WHERE id_message=?');
            $result->execute([$id]);
            $i = 0;
           if(isset($_GET["page"])){ $page=$_GET["page"];
            echo " <a style='float: left; margin-right: 10px; margin-top: -278px' href='http://localhost/test_work1/message?page=$page'>Назад</a>";}
            while ($row = $result->fetch()) {
                $d = $row["id"];
                //echo "<div style=' border-style: groove; border-color: green; width:25%; height:81px;  margin-bottom: 30px; border-radius: 10px'>";
                echo "<ul class='comment-section'>";
                    echo " <li class='comment author-comment'>
                                <div class='info'>
                                    <h4 class='pull-left'>" . $row['Author'] . "</h4>                         
                                </div>
                                <a class='avatar' href='#'>
                                    <img src='http://localhost/test_work1/styles/images/au1.png' width='35' alt='Profile Avatar' title='Анна Серебрякова' />
                                </a>
                                <p>" . $row['Comment'] . "</p>                                     
                                <a  href='http://localhost/test_work1/show/?id=" . $row["id_message"] . "&id_n=" . $row["id"] . "'>Replay</a>                                    
                                <h4 style='margin-left: 276px; margin-top: -12px '>" . $row['Time'] . " " . $row['Date'] . "</h4>                                   
                            </li> 
                    <br>
                    <br>";
                    if (!empty($_GET["id_n"]) && $d == $_GET["id_n"]) {
                        $x = $_GET["id"];
                        echo "<div  class='solid-ok'>
                                   <form action='show/?id=$id' method='post' name='message'>
                                   Author:<input type='text' name='Author'><br>
                                   Comment:<textarea  name='Comment'></textarea><br>
                                   id_message:<input type='text' name='id_message' value='$x'>
                                   <input type='submit' name='Sent message'>
                                   </form>
                               </div> ";
                    }
                echo "</ul>";
                $i++;
            }
        }
        catch (PDOException $e) {
            echo "Database error: " . $e->getMessage();
        }
    }
}