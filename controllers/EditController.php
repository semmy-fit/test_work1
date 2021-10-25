<?php

include_once ROOT . '/models/Edit.php';
class EditController
{
    public function actionIndex()
    {
       $edits = new Edit();
       $edits->update_mess();

        require_once(ROOT . '/views/edit/index.php');
        return true;
    }
}