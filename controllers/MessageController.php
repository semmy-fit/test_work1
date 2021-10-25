<?php

include_once ROOT . '/models/Message.php';
class MessageController
{
    public function actionIndex()
    {
        $news = new Message();
        $news->insert_mess();
       //$news->getMessageList();
        $news->get();

        require_once(ROOT . '/views/message/index.php');
        return true;
    }
}