<?php
	class Model
	{
        private $email_for_order = 'shipbuilder_nuk@mail.ru';

		private function connection()
		{
			$host = 'mysql.hostinger.com.ua';
			$user = 'u487382791_clnt';
			$db = 'u487382791_trsrv';
			$pass = 'ytFDlzxNa8';
			
			try
			{
			  $db = new PDO('mysql:host='.$host.';dbname='.$db, $user, $pass);
			  
			  $db->query("set_client='utf8'");
			  $db->query("set character_set_results='utf8'");
			  $db->query("set collation_connection='utf8_general_ci'");
			  $db->query("SET NAMES utf8");
			  
			  return $db;
			}
			catch (PDOException $e)
			{
			  die( 'Ошибка! Невозможно подключиться к базе данных.'.$e->getMessage() );
			}
		}
		public function get_data()
		{
			$db = $this->connection();
			
			$result = $db->query("
				SELECT m.name, m.link, s.id, s.pagenamez
				FROM menu AS m
					LEFT OUTER JOIN subpage AS s
						ON m.tid = s.tid
			");
			
			return $result->fetchAll();
		}
		public function get_services()
		{
			$db = $this->connection();
			
			$result = $db->query("
				SELECT name
				FROM menu
				WHERE tid != 0
			");
			
			return $result->fetchAll();
		}
		public function make_order($form)
		{
			$mess = "
				ФИО: $form[init]
				Контактный телефон: $form[phone]
				Email: $form[email]
			";
			
			if(!empty($form['service']))
			{
				$mess .= "\nЗаказаны следующие услуги:";
				
				foreach($form['service'] as $row)
				{
					$mess .= $row . '. ';
				}
			}
			if(!empty($form['comments']))
				$mess .= "\nКомментарий: $form[comments]";

			return mail($this->email_for_order,
				'Заказ', $mess);
		}
	}
?>