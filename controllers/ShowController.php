<?php


include_once ROOT . '/models/Show.php';
class ShowController
{
    public function actionIndex()
    {
        $m = new Show();
        $m->getMess();
        $m->insertComment();
        $m->getComment();

        require_once(ROOT . '/views/show/index.php');
        return true;
    }


}