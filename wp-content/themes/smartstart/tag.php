<?php get_header(); ?>


<?php// $has_sidebar = ss_framework_check_page_layout( $single_project = null, $portfolio_category = true ); ?>

<section id="content" class="clearfix <?php echo ss_framework_check_sidebar_position( $single_project = null, $portfolio_categories = true ); ?>">

	<div class="container">

		<header class="page-header">
				
			<h1 class="page-title"><?php printf( __('Tag Archive: %s', 'ss_framework'), $tag ); ?></h1>
			
		</header><!-- end .page-header -->
		
		<?php if( $has_sidebar ): ?>

			<section id="main">

		<?php endif; ?>

		
			<h1>Tags</h1>
			<?php echo do_shortcode('[cases tags="' . $tag . '"]'); ?>



		<?php if( $has_sidebar ): ?>

			</section><!-- end #main -->
			
			<?php get_sidebar(); ?>

		<?php endif; ?>
		
	</div><!-- end .container -->
	
</section><!-- end #content -->

<?php get_footer(); ?>