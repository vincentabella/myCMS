<?php $this->load->ext_view('themes/'.$theme_name, 'includes/header', '');?>

<h1>Welcome to Default Theme </h1>


<?php if($page):?>
	<h1><?php echo $page->title;?></h1>
	<p><?php echo $page->content;?></p>
<?php endif;?>

<?php $this->load->ext_view('themes/'.$theme_name, 'includes/footer', '');?>