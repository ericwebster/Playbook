<?php get_header(); ?>

<?php $has_sidebar = ss_framework_check_page_layout( $single_project = true ); ?>

<?php $page_title = ss_framework_get_custom_field( 'ss_page_title', of_get_option('ss_portfolio_parent') ) ? ss_framework_get_custom_field( 'ss_page_title', of_get_option('ss_portfolio_parent') ) : get_the_title( of_get_option('ss_portfolio_parent') ); ?>

<section id="content" class="clearfix <?php echo ss_framework_check_sidebar_position( $single_project = true ); ?>">

	<div class="container">

		<header class="page-header">

			<h1 class="page-title align-left"><?php echo $page_title; ?>: <?php the_title(); ?></h1>
			
			<a href="<?php echo get_permalink( of_get_option('ss_portfolio_parent') ); ?>" class="button no-bg medium align-right">
				<?php _e('All Projects', 'ss_framework'); ?> <img src="<?php echo SS_BASE_URL; ?>images/icon-grid.png" alt="" class="icon">
			</a>

			<hr />


		</header><!-- end .page-header -->

		<?php if( $has_sidebar ): ?>

			<section id="main">
				



				<?php if(ss_framework_single_project_slider( $post->ID ) && get_post_meta( get_the_ID(), 'ss_nextGen', true ) ) {

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
						<?php	$value =  get_post_meta( get_the_ID(), 'ss_nextGen', true );
						$value++;
					 		echo do_shortcode( '[ngg_images gallery_ids="'.$value.'" display_type="photocrati-nextgen_basic_thumbnails"]');
					 	?>
						</div></div>

					
					
				<?php } else{

				 echo ss_framework_single_project_slider( $post->ID ); 

				 if(get_post_meta( get_the_ID(), 'ss_nextGen', true ) ) {
					$value =  get_post_meta( get_the_ID(), 'ss_nextGen', true );
					$value++;
					 echo do_shortcode( '[ngg_images tag_ids="'.$value.'" display_type="photocrati-nextgen_basic_thumbnails"]'); }

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
								<th>Project Details</th>
							</tr>
						</thead>
						
						<tbody>
							<?php if(get_post_meta($post->ID, "ss_client", true)){ ?>
							<tr>
								<td><strong>Client:</strong> <?php echo get_post_meta( get_the_ID(), 'ss_client', true ); ?></td>
							</tr>
							<?php } ?>
							<?php if(get_post_meta($post->ID, "ss_launch_date", true)){ ?>
							<tr>
								<td><strong>Launch Date:</strong> <?php echo get_post_meta($post->ID, "ss_launch_date", true); ?></td>
							</tr>
							<?php } ?>
							<?php if(get_post_meta($post->ID, "ss_industry", true)){ ?>
							<tr>
								<td><strong>Industry:</strong> <?php echo get_post_meta($post->ID, "ss_industry", true); ?></td>
							</tr>
							<?php } ?>
							<?php if(get_post_meta($post->ID, "ss_solution_lead_email", true) && get_post_meta($post->ID, "ss_solution_lead", true)){ ?>
							<tr>
								<td><strong>Solution Owner:</strong> 
								<a href='mailto:<?php echo get_post_meta($post->ID, "ss_solution_lead_email", true); ?>' class="icon-email"><?php echo get_post_meta($post->ID, "ss_solution_lead", true); ?></a>
							</td>
							</tr>
							<?php } ?>
							<?php if(get_post_meta($post->ID, "ss_budget", true)){ ?>
							<tr>
								<td><strong>Final Budget:</strong> <?php echo get_post_meta($post->ID, "ss_budget", true); ?></td>
							</tr>
							<?php } ?>
							<?php if(get_post_meta($post->ID, "ss_actuals", true)){ ?>
							<tr>
								<td><strong>Actuals:</strong> <?php echo get_post_meta($post->ID, "ss_actuals", true); ?></td>
							</tr>
							<?php } ?>
							<?php if(get_post_meta($post->ID, "ss_url", true)){ ?>
							<tr>
								<td><a href='<?php echo get_post_meta($post->ID, "ss_url", true); ?>' target="_blank" class="button">Launch Project</a></td>
							</tr>
							<?php } ?>
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

		<?php endif; ?>

		<?php if( !$has_sidebar ): ?>
				
			<?php echo ss_framework_single_project_slider( $post->ID ); ?>

			<?php if ( have_posts() ) while ( have_posts() ): the_post(); ?>

				<?php the_content(); ?>
				
				

			<?php endwhile; ?>
			
		<?php endif; ?>
		
		
		<div>
			<?php echo ss_framework_related_solutions_sc( $post ); ?>
		</div>
	</div><!-- end .container -->

</section><!-- end #content -->

<?php get_footer(); ?>