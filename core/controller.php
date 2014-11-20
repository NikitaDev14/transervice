<?php
	class Controller
	{
		private $model;
		private $view;
		
		public function __construct()
		{
			$this->model = new Model();
			$this->view = new View();
		}
		public function index()
		{
			$this->view->generate(__FUNCTION__ . '_view');
		}
		public function service_order()
		{
			$services = $this->model->get_services();
			
			$this->view->generate(__FUNCTION__ . '_view', $services);
		}
		public function service_order_res()
		{
			$result = $this->model->make_order($_POST);
			
			if($result)
				$mess = 'Ваш заказ принят.';
			else
				$mess = 'Ошибка.Обратитесь к разработчику.';
			
			$this->view->generate('mess_view', $mess);
		}
		public function sitemap()
		{
			$sitemap = $this->model->get_data();
			
			$this->view->generate(__FUNCTION__ . '_view', $sitemap);
		}
	}
?>	