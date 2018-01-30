
<?php $this->load->ext_view('themes/'.$theme_name, 'components/header', '');?>

<body>
   
	<!--nav menu -->
	<?php $this->load->ext_view('themes/'.$theme_name, 'includes/main-menu', '');?>



	<!--content ****************************************-->
	<div class="container">
		<br><br><br>
		<ul>
		<strong>Pages</strong>
			<?php if($pages): foreach($pages as $page):?>
				<li><a href="<?php echo site_url('page/'.$page->id.'/'.$page->slug);?>"><?php echo $page->title;?></a></li>
			<?php endforeach;endif;?>
		</ul>


		<ul>
			<br><br>
			<strong>Posts</strong>
			<?php if($posts): foreach($posts as $post):?>
				<li><a href="<?php echo site_url('post/'.$post->id.'/'.$post->slug);?>"><?php echo $post->title;?></a></li>
			<?php endforeach;endif;?>
		</ul>
	</div>
	<!--content ****************************************-->





	


<?php $this->load->ext_view('themes/'.$theme_name, 'components/footer', '');?>