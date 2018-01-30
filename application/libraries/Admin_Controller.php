<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_Controller extends MY_Controller{



	public function __construct(){
		parent::__construct();
		$this->data['meta_title'] = "MyCMS";
		$this->load->helper('form');
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->model('user/user_model');
		$this->get_menu();

		// Login check
		$exception_uris = array(
			'admin/login',
			'admin/logout',
		);
		if(in_array(uri_string(), $exception_uris) == FALSE){
			if($this->user_model->loggedin() == FALSE){
				redirect('admin/login');
			}
		}
		
	}





	/**
	 * Image Uploader
	 * @param POST data image
	 * @return json image_url, thumb_url
	 * @uses upload image, global
	*/
	public function upload_image(){
		$new_name = time().'_'.$_FILES["photoimg"]['name'];

		$config = array(
			'upload_path' => "./uploads/original/",
			'allowed_types' => "gif|jpg|png|jpeg|pdf",
			'overwrite' => TRUE,
			'max_size' => "2048000", // Can be set to particular file size , here it is 2 MB(2048 Kb)
			'file_name' => $new_name
		);
			
		$this->load->library('upload', $config);
		$this->load->library('image_lib');
		
		if($this->upload->do_upload('photoimg')){
			$image_data = array('upload_data' => $this->upload->data());

			$image_path = $image_data['upload_data']['full_path'];
			

			//upload thumbnails
			$config = array(
				'image_library' => 'gd2',
		    	'source_image'      => $image_path, //path to the uploaded image
		    	'new_image'         => "./uploads/thumbs/", //path to thumbs folder
		    	'maintain_ratio'    => TRUE,
		    	'width'             => 400,
		    	'height'            => 400,
		      
		    );
		    $this->image_lib->initialize($config);
    		$this->image_lib->resize();
    		
    		//return urls 
    		$thumb_url = site_url() . '/uploads/thumbs/'. $image_data['upload_data']['file_name']; 
    		$image_url = site_url() . '/uploads/original/'. $image_data['upload_data']['file_name']; 

			$image_urls = array(
				'image_url' => $image_url,
				'thumb_url' => $thumb_url,
			);

			echo json_encode($image_urls);
		}
		else{
			$error = array('error' => $this->upload->display_errors());
			echo json_encode($error);
		}
		
	}






	/**
	 * Froala Image Uploader
	 * @param POST data image
	 * @return json image_url
	 * @uses froala editor > insert image
	*/
	public function froala_upload_image(){
		$new_name = time().'_'.$_FILES["file"]['name'];

		$config = array(
			'upload_path' => "./uploads/original/",
			'allowed_types' => "gif|jpg|png|jpeg|pdf",
			'overwrite' => TRUE,
			'max_size' => "2048000", // Can be set to particular file size , here it is 2 MB(2048 Kb)
			'file_name' => $new_name
		);
			
		$this->load->library('upload', $config);
		$this->load->library('image_lib');
		
		if($this->upload->do_upload('file')){
			$image_data = array('upload_data' => $this->upload->data());

			$image_path = $image_data['upload_data']['full_path'];
			

			//upload thumbnails
			$config = array(
				'image_library' => 'gd2',
		    	'source_image'      => $image_path, //path to the uploaded image
		    	'new_image'         => "./uploads/thumbs/", //path to thumbs folder
		    	'maintain_ratio'    => TRUE,
		    	'width'             => 400,
		    	'height'            => 400,
		      
		    );
		    $this->image_lib->initialize($config);
    		$this->image_lib->resize();
    		
    		//return urls 
    		$thumb_url = site_url() . '/uploads/thumbs/'. $image_data['upload_data']['file_name']; 
    		$image_url = site_url() . '/uploads/original/'. $image_data['upload_data']['file_name']; 

			$image_urls = array(
				'image_url' => $image_url,
				'thumb_url' => $thumb_url,
			);

			//echo json_encode($image_urls);
			// Generate response.
		    $response = new StdClass;
		    $response->link = $image_url;
		    echo stripslashes(json_encode($response));
		}
		else{
			$error = array('error' => $this->upload->display_errors());
			echo json_encode($error);
		}
		
	}






	/**
	 * Check User Module Permission
	 * @param $module_request as keyword
	 * @uses global
	*/
	public function check_module_permission($module_request){
		//Check module permission 
        $role_id = $this->session->userdata('role_id');
        $this->user_model->isModulePermissionAllowed($role_id, $module_request);
	}





	/**
	 * Get Module Access of Currently Logged In User
	 * @return bool, menu_items array
	 * @uses admin navigation, admin global
	*/
	public function get_menu(){
		if($this->session->userdata('username')){
			$this->load->model('menus/menus_model');
			$results = $this->menus_model->get_menu();
			$menu_type_id = $results[0]->menu;

			$this->data['admin_menu'] = $this->menus_model->get_menu_items($menu_type_id);
		}else{
			return FALSE;
		}
		
	}

	
	
}
