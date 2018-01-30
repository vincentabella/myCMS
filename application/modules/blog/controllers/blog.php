<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends Frontend_Controller {
	
	function __construct(){
        parent::__construct();
      	$this->load->model('blog_model');
    } 

    public function index(){
        dump("test controller");
        dump($this->get_posts_by_category('politics'));
    }



    public function get_posts($id = NULL){
        if($id){
            $this->db->where('status', 'publish');
            return $this->blog_model->get($id);
        }else{
            $this->db->where('status', 'publish');
            return $this->blog_model->get();
        }
        
    }


    public function get_posts_by_category($category){
        return $this->blog_model->get_post_by_category($category);
    }

}