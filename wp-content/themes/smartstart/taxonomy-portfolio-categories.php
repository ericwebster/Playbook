<?php get_header(); ?>

<?php $has_sidebar = ss_framework_check_page_layout( $single_project = null, $portfolio_category = true ); ?>

<?php global $wp_query; $category = $wp_query->get_queried_object(); ?>

<section id="content" class="clearfix <?php echo ss_framework_check_sidebar_position( $single_project = null, $portfolio_category = true ); ?>">

	<div class="container">

		<header class="page-header">
				
			<h1 class="page-title"><?php printf( __('Playbook Archive: %s', 'ss_framework'), $category->name ); ?></h1>
			
		</header><!-- end .page-header -->
		
		<?php if( $has_sidebar ): ?>

			<section id="main">

		<?php endif; ?>
			<h3 class="page-title">Case Studies</h3>
			<?php echo do_shortcode('[cases categories="' . $category->term_id . '"]'); ?>
		
			<h3 class="page-title">Solutions</h3>
			<?php echo do_shortcode('[solutions categories="' . $category->term_id . '"]'); ?>
		<?php if( $has_sidebar ): ?>

			</section><!-- end #main -->
			
			<?php get_sidebar(); ?>

		<?php endif; ?>
		
	</div><!-- end .container -->
	
</section><!-- end #content -->

<?php get_footer(); ?>