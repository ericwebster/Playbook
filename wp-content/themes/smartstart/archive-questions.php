<?php get_header(); ?>

<?php $has_sidebar = ss_framework_check_page_layout(); ?>

<section id="content" class="clearfix <?php echo ss_framework_check_sidebar_position(); ?>">

	<div class="container">

		<header class="page-header">
			
			<h1>Question and Answers</h1>


		</header><!-- end .page-header -->
		
		<?php if( $has_sidebar ): ?>

			<section id="main">

		<?php endif; ?>
		

		<?php if ( have_posts() ) : ?>

			<?php while ( have_posts() ) : the_post(); ?>
				
				<?php echo do_shortcode('[accordion_content title="'. get_post_meta($post->ID, "ss_question", true) .'"]'. get_post_meta($post->ID, "ss_answer", true) .'[/accordion_content]'); ?>

			<?php endwhile; ?>

			<?php echo ss_framework_pagination(); ?>

		<?php else: ?>
		
			<article id="post-0" class="post no-results not-found">
		
				<h3><?php _e( 'It seems we can&rsquo;t find what you&rsquo;re looking for...', 'ss_framework' ); ?></h3>

			</article><!-- end .hentry -->

		<?php endif; ?>
		
		
		<?php if( $has_sidebar ): ?>

			</section><!-- end #main -->

			<?php get_sidebar(); ?>

		<?php endif; ?>
		
	</div><!-- end .container -->
	
</section><!-- end #content -->

<?php get_footer(); ?>