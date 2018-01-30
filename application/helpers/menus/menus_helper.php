<?php 

/**
 * Load Modules Helper
 * 
*/
function format_modules($array, $child = FALSE){
	$string = '';

	if(count($array)){
		$string .= $child == TRUE ? '<ul class="modules list-group category_list">':'<ul class="modules list-group category_list">';
		//$string .= ' ';
		foreach($array as $item){
			if(isset($item['children'])  && count($item['children'])){
                $string .= '<li class="list-group-item" title="'.$item['name'].'">';
                $string .= '<div class="form-check">
                                <label for="module'.$item['id'].'">
                                    <input value="'.$item['id'].'" id="module'.$item['id'].'" class="form-check-input" type="checkbox">
                                    '.truncateStringWords($item['name'], 35).'
                                </label>
                            </div>';

                $string .= format_modules($item['children'], TRUE);
            }else{
                $string .= '<li class="list-group-item" title="'.$item['name'].'">';
                $string .= '<div class="form-check">
                                <label for="module'.$item['id'].'">
                                    <input value="'.$item['id'].'" id="module'.$item['id'].'" class="form-check-input" type="checkbox">
                                    '.truncateStringWords($item['name'], 35).'
                                </label>
                            </div>';
            }
            $string .= '</li>';
		}

		$string .= '</ul>';

	}

	return $string;
}
