<?php get_header(); ?>

<?php $has_sidebar = ss_framework_check_page_layout( $single_project = true ); ?>

<?php $page_title = ss_framework_get_custom_field( 'ss_page_title', of_get_option('ss_portfolio_parent') ) ? ss_framework_get_custom_field( 'ss_page_title', of_get_option('ss_portfolio_parent') ) : get_the_title( of_get_option('ss_portfolio_parent') ); ?>


<section id="content" class="clearfix <?php echo ss_framework_check_sidebar_position( $single_project = true ); ?>">

	<div class="container">

		<header class="page-header">

			<h1 class="page-title align-left">Solutions: <?php the_title(); ?></h1>
			
			<a href="/solutions/" class="button no-bg medium align-right">
				<?php _e('See all Solutions', 'ss_framework'); ?> <img src="<?php echo SS_BASE_URL; ?>images/icon-grid.png" alt="" class="icon">
			</a>

		</header><!-- end .page-header -->
		




			<section id="main">
			
				<?php if (ss_framework_single_project_slider( $post->ID ) && get_post_meta( get_the_ID(), 'ss_nextGen', true ) ) {

					?>

					
						<h4>Gallery/Slideshow</h4>

						<ul class="tabs-nav">
							<li class=""><a href="#tab-1-1">Slideshow</a></li>
							<li class=""><a href="#tab-1-2">Gallery</a></li>
						</ul>
						<div class="tabs-container" style="height: 168px;"><div id="tab-1-1" class="tab-content" style="display: none;">
						<?php	echo ss_framework_single_project_slider( $post->ID ); ?>
						</div>
						<div id="tab-1-2" class="tab-content" style="display: block;">
						<?php	$value =  get_post_meta( get_the_ID(), 'ss_nextGen', false );
							foreach($value as $key => $value) {
							  echo do_shortcode( '[ngg_images gallery_ids="'.$value.'" display_type="photocrati-nextgen_basic_thumbnails"]');
							}
					 	?>
						</div></div>
				<?php } else{

					if(ss_framework_single_project_slider( $post->ID )){
				 		 echo ss_framework_single_project_slider( $post->ID ); 
				 	}
				 		$value =  get_post_meta( get_the_ID(), 'ss_nextGen', true );
						foreach($value as $key => $value) {
							  echo do_shortcode( '[ngg_images gallery_ids="'.$value.'" display_type="photocrati-nextgen_basic_thumbnails"]');
							}
					}?>

				


				<?php if ( have_posts() ) while ( have_posts() ): the_post(); ?>

					<?php the_content(); ?>	
			

				<?php endwhile; ?>
				
				
			</section><!-- end #main -->

			<aside id="sidebar">

				
				
				<div>
					<table class="dark">
						<thead>
							<tr>
								<th>Solution Details</th>
							</tr>
						</thead>
						
						<tbody>
							
							<?php 
								$attachments = get_post_meta($post->ID, "ss_attachments");	
								if($attachments){
							?>
							<tr>
								<td>
									
									<strong>Attachments</strong>
									<div class="arrow dotted">
									<ul>
									<?php
									
									foreach ($attachments as $attachment_id){
										echo "<li>";
										echo "<a href='".wp_get_attachment_url( $attachment_id )."' target='_blank'>" . get_the_title($attachment_id) . "</a>";
										echo "</li>";
									}
									
									?>
															
										
									</ul>
									</div>
									
								</td>
							</tr>
							<?php } ?>
						</tbody>
					</table>
				</div>
				
				<div class="meta-container">
					<?php echo ss_framework_show_categories_sc(); ?>
					<?php echo ss_framework_show_tags_sc(); ?>
				</div>
						
			</aside><!-- end #sidebar -->
		
		<div>
			<?php echo ss_framework_related_cases_sc( $post ); ?>
		</div>
		
	</div><!-- end .container -->

</section><!-- end #content -->

<?php get_footer(); ?>