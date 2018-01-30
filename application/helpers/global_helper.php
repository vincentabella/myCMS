<?php


/**
 * Dump helper. Functions to dump variables to the screen, in a nicley formatted manner.
 * @author Joost van Veen
 * @version 1.0
 */
if (!function_exists('dump')) {
    function dump ($var, $label = 'Dump', $echo = TRUE)
    {
        // Store dump in variable 
        ob_start();
        var_dump($var);
        $output = ob_get_clean();
        
        // Add formatting
        $output = preg_replace("/\]\=\>\n(\s+)/m", "] => ", $output);
        $output = '<pre style="background: #FFFEEF; color: #000; border: 1px dotted #000; padding: 10px; margin: 10px 0; text-align: left;">' . $label . ' => ' . $output . '</pre>';
        
        // Output
        if ($echo == TRUE) {
            echo $output;
        }
        else {
            return $output;
        }
    }
}
if (!function_exists('dump_exit')) {
    function dump_exit($var, $label = 'Dump', $echo = TRUE) {
        dump ($var, $label, $echo);
        exit;
    }
}





function formatDate($date){
    return date('F d, Y', strtotime($date));
}



function formatTime($date){
    return date('h:iA', strtotime($date));
}   




/**
 * Get Nested Menu > usage @ Admin Menu Items
*/
function get_menu_nested($parent_id){
    $CI =& get_instance();
    $CI->load->model('menus_model');
    $menu_nested= $CI->menus_model->get_menu_nested($parent_id);    
    
   
    if(count($menu_nested)){
        echo "<ol class='dd-list'>";
        foreach($menu_nested as $item){
           
            echo "<li class='dd-item dd3-item' data-id='". $item->id ."'>";

            echo "
                <div class='dd-handle dd3-handle'></div>
                <div class='dd3-content'>
                    ". $item->title ." 

                    <span class='pull-right'>
                    <span class='loader-". $item->id ."' style='display:none;'><i class='fa fa-spinner fa-spin'></i> &nbsp;&nbsp;</span>
                        <a href='javascript:void(0);' data-id='". $item->id ."' class='edit-menu-item'><i class='fa fa-edit' aria-hidden='true' style='color: #2196F3;cursor: pointer;'></i></a> &nbsp;&nbsp;
                        <a href='javascript:void(0);' data-id='". $item->id ."' class='delete-menu-item'><i class='fa fa-close' aria-hidden='true' style='color: red;cursor: pointer;'></i></a>
                    </span>
                </div>
            ";
            

            
            // Run recursive function
            get_menu_nested($item->id);
            
            echo "</li>";
        }
        echo "</ol>";
    }

    //return $str;
}


function set_menu_active($menu_type_id){
    $CI =& get_instance();
    $uri_menutype = $CI->uri->segment(4);
    return ($uri_menutype == $menu_type_id ? 'active':'');
}




/**
 * Admin Navigation Menu 
*/
function get_navigation_menu_nested($parent_id){
    $CI =& get_instance();
    $CI->load->model('menus_model');
    $menu_nested= $CI->menus_model->get_menu_nested($parent_id); 

    if(count($menu_nested)){
        echo '<div class="collapse" id="dropdown-'. $parent_id .'" style="">';
        echo '<ul class="nav flex-column sub-menu">';
        foreach($menu_nested as $item){
           
            echo '
                <li class="nav-item">
                    <a class="nav-link" href="'. site_url($item->url) .'">
                        '. $item->title .'
                    </a>
                </li>
            ';
            

            
            // Run recursive function
            get_navigation_menu_nested($item->id);
            
        }
        echo "</ul></div>";
    }
}

function navigation_menu_has_child($parent_id){
    $CI =& get_instance();
    $CI->load->model('menus_model');
    $menu_nested= $CI->menus_model->get_menu_nested($parent_id); 
    if(count($menu_nested)){
        return TRUE;
    }else{
        return FALSE;
    }
}
/* #END# Admin Navigation Menu*/


// Set Content by Status
function set_navigation_active($status, $str){
    $CI =& get_instance();
    $url_status = ($CI->uri->segment(4) == NULL ? 'publish':$CI->uri->segment(4)) ;
    return ($url_status == $status ? '<b style="color:#1991EB;">'. $str .'</b>': $str);
}


function set_navigation_active_user($role, $str){
    $CI =& get_instance();
    $url_role = ($CI->uri->segment(4) == NULL ? 'all':$CI->uri->segment(4)) ;
    return ($url_role == $role ? '<b style="color:#1991EB;">'. $str .'</b>': $str);
}




/*
 * Set Status Color
*/
function set_status_color($status){
    switch($status){
        case 'publish':{
            return '<span class="badge badge-success"><strong>Published</strong></span>';
        }
        case 'draft':{
            return '<span class="badge badge-warning"><strong>Draft</strong></span>';
        }
        case 'trash': {
            return '<span class="badge badge-danger"><strong>Trash</strong></span>';
        }
        default: {
            return FALSE;
        }
    }
}




/**
 * Check if Trash Uri, then perform load delete permanently 
*/
function isTrashUri(){
    $CI =& get_instance();
    $uri_trash = $CI->uri->segment(4);
    return ($uri_trash == 'trash' ? true:false);
}


/*
 * Limit Number of words helper
*/
function limit_to_numwords($string, $numwords){
    $excerpt = explode(' ', $string, $numwords + 1);
    if(count($excerpt) >= $numwords){
        array_pop($excerpt);
    }

    $excerpt = implode(' ', $excerpt);

    return $excerpt;
}


/**
 * truncate a string provided by the maximum limit without breaking a word
 * @param string $str
 * @param integer $maxlen
 * @return string
 */
function truncateStringWords($str, $maxlen){
    if (strlen($str) <= $maxlen) return $str;

    $newstr = substr($str, 0, $maxlen);
    if (substr($newstr, -1, 1) != ' ') $newstr = substr($newstr, 0, strrpos($newstr, " "));

    return $newstr.'...';
}