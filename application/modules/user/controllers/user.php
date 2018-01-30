<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends Frontend_Controller {

	function __construct(){
        parent::__construct();
        $this->load->helper('user/user_helper');
        $this->load->model('user_model');	
    }

	public function index(){
			
		$this->data['users'] = $this->user_model->get();		

		// Load view
		$this->load->view('user');
	}

	public function test_user(){
		dump('This is test_user controller');
	}
}