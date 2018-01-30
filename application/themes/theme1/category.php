<?php $this->load->ext_view('themes/'.$theme_name, 'components/header', '');?>

<body>
	<!--nav menu -->
	<?php $this->load->ext_view('themes/'.$theme_name, 'includes/main-menu', '');?>
	
	<!--content-->
	<div class="container">
		<br><br><br>
		<?php if($posts_by_category):?>
			<h4><?php echo $category_name?></h4>
			<ul>
				<?php if($posts_by_category): foreach($posts_by_category as $post):?>
					<li><a href="<?php echo site_url('post/'.$post->id.'/'.$post->slug);?>"><?php echo $post->title;?></a></li>
				<?php endforeach;?>
				<?php endif;?>
			</ul>
		<?php else:?>
			<h4>No posts found for this category.</h4>
		<?php endif;?>


	</div>

<?php $this->load->ext_view('themes/'.$theme_name, 'components/footer', '');?>  