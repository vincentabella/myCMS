<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Themes extends FrontEnd_Controller {

	public $theme = 'theme1'; //get from db

	function __construct(){
        parent::__construct();
        $this->load->module('page');
        $this->load->module('blog');
        $this->load->module('menus');

        $this->data['site_name'] = 'My Website';
        $this->data['theme_name'] = $this->theme;
        $this->data['frontend_menu'] = $this->menus_model->get_menus(7);

    }



    public function index(){
    	$this->data['pages'] = $this->page->get_pages();
        $this->data['posts'] = $this->blog->get_posts();
        
    	$this->load->ext_view('themes/'.$this->theme, 'index', $this->data);
    }





    /**
     * Get Page Single Display
     * @param $id, $slug
     * @return page content, load view
     * @uses themes
    */
    public function page($id, $slug){
        if($id){
            $id = (int) $id;
            $this->data['page'] = $this->page->get_pages($id);
            count($this->data['page']) || show_404(uri_string());

            // Redirect to correct slug if incorrect
            $requested_slug = $this->uri->segment(3);
            $set_slug = $this->data['page']->slug;
            if($requested_slug != $set_slug){
                redirect('page/'. $this->data['page']->id .'/'. $this->data['page']->slug, 'location', '301');
            }
        }else{
            show_404();
        }
    	

		$this->data['theme_name'] = $this->theme;
    	$this->load->ext_view('themes/'.$this->theme, 'page', $this->data);
    }







    /**
     * Get Blog Post Single Display
     * @param $id, $slug
     * @return page content, load view
     * @uses themes
    */
    public function post($id, $slug){
        if($id){
            $id = (int) $id;
            $this->data['post'] = $this->blog->get_posts($id);
            count($this->data['post']) || show_404(uri_string());

            // Redirect to correct slug if incorrect
            $requested_slug = $this->uri->segment(3);
            $set_slug = $this->data['post']->slug;
            if($requested_slug != $set_slug){
                redirect('post/'. $this->data['post']->id .'/'. $this->data['post']->slug, 'location', '301');
            }
        }else{
            show_404();
        }

        $this->data['theme_name'] = $this->theme;
        $this->load->ext_view('themes/'.$this->theme, 'post', $this->data); 
    }






    /**
     * Get Posts by Category
     * @param $type, $category
     * @return posts by categories, load view
     * @uses themes
    */
    public function category($type, $category){
        $this->data['posts_by_category'] = $this->blog->get_posts_by_category($category);
        if(count($this->data['posts_by_category'])){
            $this->data['theme_name'] = $this->theme;
            $this->data['category_name'] = $this->data['posts_by_category'][0]->category_name;
        }
        
        $this->load->ext_view('themes/'.$this->theme, 'category', $this->data); 
    }
}