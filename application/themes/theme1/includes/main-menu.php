<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container">
	  	<a class="navbar-brand" href="<?php echo site_url();?>"><?php echo $site_name;?></a>
	  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    	<span class="navbar-toggler-icon"></span>
	  	</button>

	  	<div class="collapse navbar-collapse" id="navbarSupportedContent">
	    	
	    	<?php echo get_frontend_menu($frontend_menu);?>

	    	<form class="form-inline my-2 my-lg-0">
	      		<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
	      		<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	    	</form>
	  	</div>
  	</div>
</nav>





<?php
	
	/**
	 * Design your own customize menu 
	 * @param $array of menus
	 * @param $child
	 * @uses recursive function
	*/
	function get_frontend_menu($array, $child = FALSE){
		$string = '';

		if(count($array)){
			$string .= $child == TRUE ? '<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">':'<ul class="navbar-nav mr-auto">';
			
			foreach($array as $item){
				if(isset($item['children'])  && count($item['children'])){
	                $string .= '<li class="nav-item dropdown">';
	                $string .= '<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                			'. $item['title'] . '</a>';

	                $string .= get_frontend_menu($item['children'], TRUE);
	            }else{
	                $string .= '<li class="nav-item '. set_frontend_menu_active($item['keyword']) .'">';
	                $string .= '<a class="nav-link" target="_'. $item['target'] .'" href="'. $item['url'] .'">
	                			'. $item['title'] .'</a>';
	            }
	            $string .= '</li>';
			}

			$string .= '</ul>';

		}

		return $string;
	}


	function set_frontend_menu_active($keyword){
		$CI =& get_instance();
		$uri = $CI->uri->segment(3);
		return ($uri == $keyword ? 'active':'');
	}
?>

