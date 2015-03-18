<?php if( !is_user_logged_in() ) wp_redirect( home_url('/') ); ?>

<?php get_header(); ?>

<section id="content" class="clearfix">

	<div class="container">

		<header class="page-header">

			<h1 class="page-title"><?php the_title(); ?></h1>

		</header><!-- end .page-header -->

		<?php if( $has_sidebar ): ?>

			<section id="main">

		<?php endif; ?>
		

		<?php while ( have_posts() ) : the_post(); ?>

			<article id="post-<?php the_ID(); ?>" <?php post_class('clearfix'); ?>>

				<?php get_template_part( 'content', get_post_format() ); ?>

			</article><!-- end .hentry -->
			
			<?php if ( comments_open() || '0' != get_comments_number() ) comments_template( '', true ); ?>

		<?php endwhile; ?>
		

		<?php if( $has_sidebar ): ?>

			</section><!-- end #main -->

			<?php get_sidebar(); ?>

		<?php endif; ?>

	
	</div><!-- end .container -->
	
</section><!-- end #content -->

<?php get_footer(); ?>