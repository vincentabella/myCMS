<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends Admin_Controller {





	function __construct(){
        parent::__construct();
        $this->load->model('blog/blog_model');
        $this->load->model('blog/blog_categories_model');
       	$this->check_module_permission('dashboard');// check module permission
    }





	public function index(){
		$this->data['recent_posts'] = $this->blog_model->get_recent_post(4);
		$this->data['user_activity'] = $this->user_model->get_user_activity(4);
		$this->data['categories'] = $this->blog_categories_model->get_category();

		$this->data['subview'] = 'dashboard';
		$this->load->view('admin/_main_layout', $this->data);
	}






	public function dashboard(){
		
		$this->data['subview'] = 'dashboard';
		$this->load->view('admin/_main_layout', $this->data);
	}




	
}