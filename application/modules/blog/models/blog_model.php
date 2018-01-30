<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blog_model extends MY_Model {

	protected $_table_name = 'blog';
	protected $_order_by = '';

	function __construct(){
        parent::__construct();
    }



    /**
     * Search Post
     * @param $keyword 
     * @return search result
    */
    public function search_posts($keyword){
    	if(empty($keyword))
       		return array();

	    $result = $this->db->like('title', $keyword);
        $result = $this->db->limit(10)->get($this->_table_name);

    	return $result->result();
    	$this->db->reset();
    }




    /**
     * Set Query
     * @uses Admin Query
    */
    public function set_query(){
    	$this->db->select("GROUP_CONCAT(categories.name SEPARATOR ', ') AS catname, blog.`id` as id, title, content, blog.`status` as status, blog.`image` as image, blog.`image_thumb` as image_thumb, blog.`date_created`, blog.`date_published` as date_published, blog.`date_modified` as date_modified, blog.`last_modified_by` as last_modified_by, blog.`slug` as slug, username");
        $this->db->join('users', 'blog.author_id=users.id', 'inner');
        $this->db->join('blog_category', 'blog.id=blog_category.blog_id', 'left');
        $this->db->join('categories', 'blog_category.category_id=categories.id', 'inner');
        $this->db->group_by('id');
        $this->db->order_by('id desc');
    }




    /**
     * Get Posts Content
     * @param $id as NULL
     * @return blog posts 
    */
    public function get_posts($id = NULL){
        $this->db->where('status', 'publish');
        $this->db->order_by('id desc');

        if($id){
            $this->db->where('id', $id);
        }
        return parent::get();
    }

    


    /**
     * Set Display Query
     * @uses FrontEnd Query
    */
    public function set_display_query(){
        $this->db->select('blog.id AS id, title, blog.slug AS slug, content, blog.status AS status, date_published, blog.image AS image, blog.image_thumb AS image_thumb, first_name, last_name, username, categories.name AS category_name');
        $this->db->join('blog_category', 'blog.id=blog_category.blog_id', 'inner');
        $this->db->join('categories', 'categories.id=blog_category.category_id', 'inner');
        $this->db->join('users', 'users.id=blog.author_id', 'inner');
        $this->db->where('blog.status', 'publish');
    }





    /**
     * Get Posts by Category
     * @param $category as category_slug
     * @return blog posts
     * @uses Public View > post by category
    */  
    public function get_post_by_category($category){
        $this->set_display_query();
        $this->db->where('categories.slug', $category);
        return parent::get();
    }
}