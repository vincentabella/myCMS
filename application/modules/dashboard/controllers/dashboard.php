<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends Admin_Controller {

	function __construct(){
        parent::__construct();
       	$this->check_module_permission('dashboard');// check module permission
    }

	public function index(){
		$this->data['subview'] = 'dashboard';
		$this->load->view('admin/_main_layout', $this->data);
	}

	public function dashboard(){
		$this->data['subview'] = 'dashboard';
		$this->load->view('admin/_main_layout', $this->data);
	}

	
}