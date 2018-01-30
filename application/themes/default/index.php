
<?php $this->load->ext_view('themes/'.$theme_name, 'includes/header', '');?>

<h1>Welcome to Default Theme</h1>

<ul>
<?php if($pages): foreach($pages as $page):?>
	
		<li><a href="<?php echo site_url('page/'.$page->id.'/'.$page->slug);?>"><?php echo $page->title;?></a></li>
	
<?php endforeach;endif;?>
</ul>

<?php $this->load->ext_view('themes/'.$theme_name, 'includes/footer', '');?>