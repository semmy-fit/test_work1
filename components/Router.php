<?php

class Router
{

    private $rout;

    public function __construct()
    {
        $routePath = ROOT.'/config/routes.php';
        $this->rout = include($routePath);
    }



    private function getURI()
    {
        if (!empty($_SERVER['REQUEST_URI'])) {
            return trim($_SERVER['REQUEST_URI'], '/');
        }
    }

    public function run()
    {
        $ure = $this->getURI();

        foreach ($this->rout as $uri => $path) {

            if(preg_match("~$uri~", $ure)) {

                $segment = explode('/', $path);

                $controllerName = array_shift($segment).'Controller';
                $controllerName = ucfirst($controllerName);


                $actionName = 'action'.ucfirst((array_shift($segment)));

                $controllerFile = ROOT . '/controllers/' .$controllerName. '.php';
                if (file_exists($controllerFile)) {
                    include_once($controllerFile);
                }

                $controlObject = new $controllerName;
                $result = $controlObject->$actionName();
                if ($result != null) {
                    break;
                }
            }

        }
    }
}