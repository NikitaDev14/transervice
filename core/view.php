<?php
	class View
	{
		private $template = 'views/template_view.php';
		
		public function generate($view, $content = null)
		{
			require_once $this->template;
		}
	}
?>