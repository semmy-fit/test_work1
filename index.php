<?php
// FRONT COTROLLER

// 1. Общие настройки
    ini_set('display_errors', 1);
    error_reporting(E_ALL);
// 2. Подключение файлов системы
    define('ROOT', dirname(__FILE__));
    require_once(ROOT.'/components/Router.php');
// 3. Вызор Router
    $router = new Router();
    $router->run();
//require_once(ROOT.'/models/Message.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="http://localhost/test_work1/styles/css/style.css">
    <title>Главная</title>
    <div class="head">
        <header><div class="title">Test Work</div>
        </header><!--Заголовок в шапке страницы-->
        <div id=navbar>
            <a href="http://localhost/test_work1/message">Show list message</a>
        </div>	<!--горизонтальное меню-->
    </div>
</head>
<body>
    <!--<div class="footer">
        <h2>Copiright 2021</h2>
    </div>--><!--нижняя панель сайта-->
</body>
</html>



