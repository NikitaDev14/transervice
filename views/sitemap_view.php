<ul>
	<?php
		$prev = null;
		$is_nested = false;
		
		foreach($content as $row)
		{
			$str = null;
			
			if($prev != $row['link'])
			{
				if($is_nested)
				{
					$is_nested = false;
					
					$str .= '</ul></li>';
				}
				if($row['id'] != null)
				{
					$is_nested = true;
					
					$str .= "<li><a href = /$row[link] >$row[name]</a><ul>";
				}
			}
			if($is_nested)
			{
				$str .= "<li><a href = '/$row[link]?id = $row[id]' >$row[pagenamez]</a></li>";
			}
			else
			{
				$str .= "<li><a href = /$row[link] >$row[name]</a></li>";
			}
			
			echo $str;
			
			$prev = $row['link'];
		}
	?>
</ul>