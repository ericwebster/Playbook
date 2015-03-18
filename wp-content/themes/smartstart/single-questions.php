<?php get_header(); ?>

<?php $has_sidebar = ss_framework_check_page_layout( $single_project = true ); ?>

<?php $page_title = ss_framework_get_custom_field( 'ss_page_title', of_get_option('ss_portfolio_parent') ) ? ss_framework_get_custom_field( 'ss_page_title', of_get_option('ss_portfolio_parent') ) : get_the_title( of_get_option('ss_portfolio_parent') ); ?>

<section id="content" class="clearfix <?php echo ss_framework_check_sidebar_position( $single_project = true ); ?>">

	<div class="container">

		<header class="page-header">

			<h1 class="page-title align-left"><?php echo get_post_meta($post->ID, "ss_question", true); ?></h1>
		

			<hr />

			

			

		</header><!-- end .page-header -->


		<section id="main">
		
				
			<?php if ( have_posts() ) while ( have_posts() ): the_post(); ?>

				<?php echo get_post_meta($post->ID, "ss_answer", true); ?>
				

			<?php endwhile; ?>
			
		
		</section>

	</div><!-- end .container -->

</section><!-- end #content -->

<?php get_footer(); ?>