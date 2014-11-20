<?php
	class Router
	{
		public static function start()
		{	
			$controller = new Controller();
			
			$routes = explode('/', $_SERVER['REQUEST_URI']);
			
			if(!empty($routes[2]))
			{
				$controller->$routes[2]();
			}
			else
			{
				$controller->index();
			}
		}
	}
?>