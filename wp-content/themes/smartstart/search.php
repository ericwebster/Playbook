<?php get_header(); ?>

<?php $has_sidebar = ss_framework_check_page_layout(); ?>

<section id="content" class="clearfix <?php echo ss_framework_check_sidebar_position(); ?>">

	<div class="container">

		<header class="page-header">

			<?php if ( have_posts() ): ?>
			
				<h1 class="page-title"><?php printf( __( 'Search Results for: %s', 'ss_framework' ), '<span>' . get_search_query() . '</span>' ); ?></h1>

			<?php else: ?>
			
				<h1 class="page-title"><?php _e( 'Nothing Found', 'ss_framework' ); ?></h1>

			<?php endif; ?>

		</header><!-- end .page-header -->
		
		<?php if( $has_sidebar ): ?>

<?php do_action('ss_framework_search_filter'); ?>

			<section id="main">


			
		<?php endif; ?>
		

		<?php 

 if ( have_posts() ) : ?>




			<?php while ( have_posts() ) : the_post(); ?>

			

				<?php
				$cust_post_type = get_post_type_object( get_post_type($post) );
				$cust_post_label = $cust_post_type->label;

				
				?>

				<article id="post-<?php the_ID(); ?>" <?php post_class('clearfix'); ?>>
					<a href="<?php the_permalink(); ?>">
						<h4><?php echo $cust_post_label; ?>: <?php the_title(); ?></h4>
					</a>

					<div class="one-fourth">
						<a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>" >
							<?php the_post_thumbnail( "thumbnail" ); ?> 
						</a>
					</div>
					<div class="three-fourth last">
						<?php the_excerpt(); ?>
					</div><!-- end .entry-meta -->
				
					
				</article><!-- end .hentry -->
				<?php// echo do_shortcode('[show_category_tree_search]'); ?>
			<?php endwhile; ?>

			<?php echo ss_framework_pagination(); ?>

		<?php else: ?>

		

			<article id="post-0" class="hentry post no-results not-found">

		
				<h3><?php _e( 'Sorry, but nothing matched your search terms. Please try again with some different keywords.', 'ss_framework' ); ?></h3>

			</article><!-- end .hentry -->

		<?php endif; ?>

		
		<?php if( $has_sidebar ): ?>

			</section><!-- end #main -->

			<?php get_sidebar(); ?>

		<?php endif; ?>
		
	</div><!-- end .container -->
	
</section><!-- end #content -->

<?php get_footer(); ?>