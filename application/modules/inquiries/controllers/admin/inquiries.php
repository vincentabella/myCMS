<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Inquiries extends Admin_Controller {



	function __construct(){
        parent::__construct();
      	$this->load->model('inquiries_model');	
      	

        $this->check_module_permission('inquiries');//check module permission
    }




    public function index(){
    	$this->_get_inquiries('new');

        $this->data['inquiries_count'] = $this->get_count_inquiries();
    	$this->data['subview'] = 'admin/index';
		$this->load->view('admin/_main_layout', $this->data);
    }






    /**
     * Get Inquiries Content
     * @param $status 
     * @return inquiries data
     * @uses inquiries by status
    */
    public function _get_inquiries($status){
        $this->set_pagination($status);
        
        $this->inquiries_model->set_query();

        if($status){
            switch($status){
                case 'all':{
                    $this->db->where("(inquiries.status='new' OR inquiries.status='read')");
                    break;
                }
                case 'new':{
                    $this->db->where("inquiries.status", 'new');
                    break;
                }
                case 'read':{
                     $this->db->where("inquiries.status", 'read');
                    break;
                }
                case 'trash':{
                    $this->db->where("inquiries.status", 'trash');
                    break;
                }
                default:{
                    redirect('admin/inquiries');
                }
            }
        }
        $this->data['inquiries'] = $this->inquiries_model->get();
        
    }







    /**
     * Get Inquiries by status
     * @param $status
     * @uses inquiries display
    */
    public function inquiries_by_status($status){
        $this->data['inquiries_count'] = $this->get_count_inquiries();
        $this->_get_inquiries($status);

        $this->data['subview'] = 'admin/index';
        $this->load->view('admin/_main_layout', $this->data);
    }







    /**
     * Get the total numer of Inquiries by status
     * @return inquiries data
     * @uses pagination
    */
    public function get_count_inquiries(){
        $this->db->select("SUM(IF(STATUS = 'new',1,0)) AS 'totalNew', SUM(IF(STATUS = 'read',1,0)) AS 'totalRead', SUM(IF(STATUS = 'trash',1,0)) AS 'totalTrash', SUM(IF(STATUS = 'read' OR STATUS='new' ,1,0)) AS 'All'");
        $data_array = $this->inquiries_model->get();
        return $data_array;
        $this->db->reset(); //reset all queries
    }






    /**
     * Set Inquiries pagination
     * @param @status
     * @return pagination links
     * @uses inquiries display 
    */
    public function set_pagination($status){
        $inquiries_count = $this->get_count_inquiries(); //get page count

        //get the total number of rows per page status
        switch($status){
            case 'all':{
                $count = $inquiries_count[0]->All;
                break;
            }
            case 'new':{
                $count = $inquiries_count[0]->totalNew;
                break;
            }
            case 'read':{
                $count = $inquiries_count[0]->totalRead;
                break;
            }
            case 'trash': {
                $count =$inquiries_count[0]->totalTrash;
                break;
            }
            default:{
                return FALSE;
            }
        }
        

        // pagination settings
        $perpage = 10;
        if($count > $perpage){
            $this->load->library('pagination');
            $config['base_url'] = site_url('admin/inquiries/status/'. $status .'/');
            $config['total_rows'] = $count;
            $config['per_page'] = $perpage;
            $config['uri_segment'] = 5;
            $config["num_links"] = 3;

            $this->pagination->initialize($config);
            $this->data['pagination'] = $this->pagination->create_links();
            $offset = ($this->uri->segment(5) != NULL ? $this->uri->segment(5) - 1 : $this->uri->segment(5));
            $this->db->limit($perpage, $offset);
 
        }else{
            $this->data['pagination'] = '';
            $offset = 0;
        }
        
    }






    /**
	 * View Inquiry Details
	 * @param $id
	 * @uses view inquiry info
    */
    public function view_inquiry($id){
    	$this->data['inquiry'] = $this->inquiries_model->get($id);
    	$this->update_inquiry_opened($this->data['inquiry']); //update date opened

    	$this->data['subview'] = 'admin/view_inquiry';
        $this->load->view('admin/_main_layout', $this->data);
    }








    /**
	 * Update When the Inquiry is opened
	 * @param $inquiry array
	 * @return none
	 * @uses view_inquiry()
    */
    public function update_inquiry_opened($inquiry){
    	$id = $inquiry->id;
    	$opened_by = $this->session->userdata('username');

    	//check status
    	if($inquiry->status == 'new'){
    		$data = array(
	    		'opened_by' => $opened_by,
	    		'date_opened' => date('Y-m-d H:i:s'),
	    		'status' =>  'read'
	    	);

	    	$this->inquiries_model->save($data, $id); //save
    	}
    }




    /**
	 * Inquiry - Move to Trash
	 * @param POST data
	 * @return json
	 * @uses move to trash
    */
    public function move_to_trash(){
    	if($this->input->post('form_submit')){
    		$id = (int) $this->input->post('inquiry_id');
    		$data = array('status' => 'trash');
    		$isUpdate = $this->inquiries_model->save($data, $id);
    		if($isUpdate){
    			echo json_encode(array('success' => TRUE));
    		}else{
    			echo json_encode(array('success' => FALSE));
    		}
    	}else{
    		echo json_encode(array('error' => 'post parameters missing'));
    	}
    }





    /**
	 * Delete Inquiry Permanently
	 * @param POST data
	 * @return json
	 * @uses delete inquiry permanently
    */
    public function delete_inquiry(){
    	if($this->input->post('form_submit')){
    		$id = (int) $this->input->post('inquiry_id');
    		$this->inquiries_model->delete($id);
    		echo json_encode(array('success' => TRUE));
    	}else{
    		echo json_encode(array('error' => 'post parameters missing'));
    	}
    }







    /**
	 * Search Inquiry by Keyword
	 * @param $keyword
	 * @return search results
	 * @uses search inquiry
    */
    public function search(){
    	if($this->input->post('form_submit')){
            
            $this->data['inquiries_count'] = $this->get_count_inquiries();
            $keyword = xss_clean($this->input->post('search-keyword'));
            
            $this->inquiries_model->set_query(); 
            $this->data['inquiries'] = $this->inquiries_model->search_inquiry($keyword);
            $this->data['keyword'] = $keyword;
            $this->data['is_search'] = TRUE;
            $this->data['results_count'] = count($this->data['inquiries']); 
        }else{
            redirect('admin/inquiries');
        }

        $this->data['subview'] = 'admin/index';
        $this->load->view('admin/_main_layout', $this->data);
    }

}