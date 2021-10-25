<link rel="stylesheet" href="http://localhost/test_work1/styles/css/mess_style.css">
<?php


class Message
{

    public function  insert_mess()
    {
       try {
           $pdo = new PDO("mysql:host=localhost;dbname=test_work1", "root", "admin");
           if(!empty($_POST["Title"]) && !empty($_POST["author"]) && !empty($_POST["summary"]) &&  !empty($_POST["full_content"]))
           {

                $sql = "INSERT INTO message(title,author,summary,full_content) VALUES (:title,:author,:summary,:full_content)";
                $statement = $pdo->prepare($sql);
                $statement->bindParam(":title", $_POST["Title"]);
                $statement->bindParam(":author", $_POST["author"]);
                $statement->bindParam(":summary", $_POST["summary"]);
                $statement->bindParam(":full_content", $_POST["full_content"]);
                $statement->execute();
               echo "<script>window.location = 'http://localhost/test_work1/message'</script>";
               //echo "Worked";
           }

       }

       catch (PDOException $e) {
           echo "Database error: " . $e->getMessage();
       }

        }


    public static function get()
    {
        function link_p($p, $count_p)
            {
                 for ($i = 1; $i <= $count_p; $i++)
                    {
                            // Вывод ссылки
                          if ($i == $p) { echo ' <a style="color: #808000;" ><b>'.$i.'</b></a> ';
                            } else { echo ' <a style="color: #808000;" href='.'?page='.$i.'>'.$i.'</a> ';}

                            if ($i != $count_p) echo ' ';
                    }
                return true;
             }

        // Подключение к базе данных
        $db_con=mysqli_connect('localhost', 'root', 'admin') or die('error! Нет соединения с сервером mysql!');
        mysqli_select_db($db_con,'test_work1') or die('error! Нет соединения с базой данных!');

        // Подготовка к постраничному выводу
        $page_mess =4; // Количество отображаемых данных из БД
        if (empty($_GET['page']) || ($_GET['page'] <= 0)) {
            $p = 1;

        } else {
            $p = (int) $_GET['page'];
        }

        $d=mysqli_query($db_con,'select * from message') or die('error! Записей не найдено!');
        $count = mysqli_num_rows($d);
        $count_p = ceil($count / $page_mess); // Количество страниц

        // Если номер страницы оказался больше количества страниц
        if ($p > $count_p) $p = $count_p;
        $start_pos = ($p - 1) * $page_mess; // Начальная позиция, для запроса к БД


        echo '<p><b>Постраничный вывод информации</b></p>';
        $result = mysqli_query($db_con,'select * from message limit '.$start_pos.', '.$page_mess) or die('error!');
        while ($row = mysqli_fetch_array($result)) {
             $d=$row['Id'];
            $x=$p;
          // echo "<div style='border-style: solid; border-color: black; width:12%; height:81px;  margin-bottom: 30px; border-radius: 10px'>";
            echo "<div class='mine messages'>";
            echo  " <div class='message'>
                            <h4 style='margin-top: -2px'>". $row['Title']."</h4><hr style='margin-top: -20px'>  
                             <h2>". $row['summary']."</h2> 
                             <a style='float: right; margin-right: 10px; margin-top: -20px' href='show/?id=$d&page=$x'>See</a>
                    </div>   ";
            echo "</div>";
            //echo  "</div>";

        }
        link_p($p, $count, $count_p);
    }

  /*  public static function getMessageList() {

        try {
            $pdo = new PDO("mysql:host=localhost;dbname=test_work1", "root", "admin");
            $result = $pdo->query('SELECT * FROM message ORDER BY id ASC LIMIT 10');


            $i = 0;
            while ($row = $result->fetch()) {
              //  echo "<div style='border-style: solid; border-color: black; width:12%; height:81px;  margin-bottom: 30px; border-radius: 10px'>";
                echo "  <div class='mine messages'>";
                echo  "  <div class='message'>
                            <h4 style='margin-top: -2px'>". $row['Title']."</h4><hr style='margin-top: -20px'>  
                             <h2>". $row['summary']."</h2> 
                       </div>";
                echo "</div>";

               // echo  "</div>";

                $i++;
            }


        }
        catch (PDOException $e) {
            echo "Database error: " . $e->getMessage();
        }


    }*/
}