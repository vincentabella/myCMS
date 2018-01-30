<?php $this->load->ext_view('themes/'.$theme_name, 'components/header', '');?>

<body>
	<!--nav menu -->
	<?php $this->load->ext_view('themes/'.$theme_name, 'includes/main-menu', '');?>
	
	<!--content-->
	<div class="container">
		<br><br><br>
		<?php if($post):?>
			<h1><?php echo $post->title;?></h1>
			<p><?php echo stripcslashes($post->content);?></p>
		<?php endif;?>
	</div>

<?php $this->load->ext_view('themes/'.$theme_name, 'components/footer', '');?>