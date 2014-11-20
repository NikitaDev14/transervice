<form action = '/index.php/service_order_res' method = 'post' >
	
	<p>ФИО:</p>
	<p><input id = 'init' type = 'text' name = 'init' maxlength = 100 size = 27 required /><span></span></p>
	
	<p>Контактный телефон:</p>
	<p><input id = 'phone' type = 'text' name = 'phone' maxlength = 13 size = 27 required /><span></span></p>
	
	<p>E-mail:</p>
	<p><input id = 'email' type = 'text' name = 'email' maxlength = 255 size = 27 required /><span></span></p>
	
	<div id = 'services'>

		<?php
			foreach($content as $row)
			{
				echo "<p><label><input type=checkbox name=service[] value='$row[name]' />$row[name]</label></p>";
			}
		?>

	</div>
	
	<p>Дополнительные комментарии:</p>
	<textarea name='comments' cols = 30 rows = 5 maxlength = 1000 ></textarea>
	
	<p><input type = 'submit' value='Отправить' /></p>
	
</form>

<script type='text/javascript' src='http://code.jquery.com/jquery-1.6.4.min.js'></script>
<script type='text/javascript' src='/core/form_config.js'></script>
<script type='text/javascript' src='/core/form_validation.js'></script>
