<?php

/* ---------------------------------------------------------------------- */
/*	Questions and Answers
/* ---------------------------------------------------------------------- */

// Register Custom Post Type: 'Questions and Answers'
function ss_framework_register_post_type_QnA() {

	$labels = array(
		'name'               => __( 'Questions', 'ss_framework' ),
		'singular_name'      => __( 'Question', 'ss_framework' ),
		'add_new'            => __( 'Add New', 'ss_framework' ),
		'add_new_item'       => __( 'Add New Question', 'ss_framework' ),
		'edit_item'          => __( 'Edit Question', 'ss_framework' ),
		'new_item'           => __( 'New Question', 'ss_framework' ),
		'view_item'          => __( 'View Question', 'ss_framework' ),
		'search_items'       => __( 'Search Questions', 'ss_framework' ),
		'not_found'          => __( 'No questions found', 'ss_framework' ),
		'not_found_in_trash' => __( 'No questions found in Trash', 'ss_framework' ),
		'parent_item_colon'  => __( 'Parent Project:', 'ss_framework' ),
		'menu_name'          => __( 'Questions', 'ss_framework' ),
	);

	$args = array(
		'labels'              => $labels,
		'hierarchical'        => false,
		'supports'            => array( 'title', 'page-attributes' ),
		'taxonomies'          => array( 'portfolio-categories', 'post_tag' ),
		'public'              => true,
		'show_ui'             => true,
		'show_in_menu'        => true,
		'show_in_nav_menus'   => true,
		'publicly_queryable'  => true,
		'exclude_from_search' => false,
		'has_archive'         => true,
		'query_var'           => true,
		'can_export'          => true,
		'rewrite'             => array( 'slug' => 'questions' ),
		'capability_type'     => 'post',
		'menu_position'       => null,
		'menu_icon'           => SS_BASE_URL . 'functions/assets/img/icon-portfolio.png'
	);

	register_post_type( 'questions', apply_filters( 'ss_framework_register_post_type_QnA', $args ) );

} 
add_action('init', 'ss_framework_register_post_type_QnA');

/* ---------------------------------------------------------------------- */
/*	Portfolio
/* ---------------------------------------------------------------------- */

// Register Custom Post Type: 'Portfolio'
function ss_framework_register_post_type_portfolio() {

	$labels = array(
		'name'               => __( 'Case', 'ss_framework' ),
		'singular_name'      => __( 'Project', 'ss_framework' ),
		'add_new'            => __( 'Add New', 'ss_framework' ),
		'add_new_item'       => __( 'Add New Project', 'ss_framework' ),
		'edit_item'          => __( 'Edit Project', 'ss_framework' ),
		'new_item'           => __( 'New Project', 'ss_framework' ),
		'view_item'          => __( 'View Project', 'ss_framework' ),
		'search_items'       => __( 'Search Projects', 'ss_framework' ),
		'not_found'          => __( 'No projects found', 'ss_framework' ),
		'not_found_in_trash' => __( 'No projects found in Trash', 'ss_framework' ),
		'parent_item_colon'  => __( 'Parent Project:', 'ss_framework' ),
		'menu_name'          => __( 'Examples', 'ss_framework' ),
	);

	$args = array(
		'labels'              => $labels,
		'hierarchical'        => true,
		'supports'            => array( 'title', 'editor', 'thumbnail', 'page-attributes' ),
		'taxonomies'          => array( 'portfolio-categories', 'post_tag', 'portfolio-tags' ),
		'public'              => true,
		'show_ui'             => true,
		'show_in_menu'        => true,
		'show_in_nav_menus'   => true,
		'publicly_queryable'  => true,
		'exclude_from_search' => false,
		'has_archive'         => true,
		'query_var'           => true,
		'can_export'          => true,
		'rewrite'             => array( 'slug' => 'case' ),
		'capability_type'     => 'post',
		'menu_position'       => null,
		'menu_icon'           => SS_BASE_URL . 'functions/assets/img/icon-portfolio.png'
	);

	register_post_type( 'portfolio', apply_filters( 'ss_framework_register_post_type_portfolio', $args ) );

} 
add_action('init', 'ss_framework_register_post_type_portfolio');

/* ---------------------------------------------------------------------- */
/*	Solutions
/* ---------------------------------------------------------------------- */

// Register Custom Post Type: 'Solutions'
function ss_framework_register_post_type_solutions() {

	$labels = array(
		'name'               => __( 'Solutions', 'ss_framework' ),
		'singular_name'      => __( 'Solution', 'ss_framework' ),
		'add_new'            => __( 'Add New', 'ss_framework' ),
		'add_new_item'       => __( 'Add New Solution', 'ss_framework' ),
		'edit_item'          => __( 'Edit Solution', 'ss_framework' ),
		'new_item'           => __( 'New Solution', 'ss_framework' ),
		'view_item'          => __( 'View Solution', 'ss_framework' ),
		'search_items'       => __( 'Search Solutions', 'ss_framework' ),
		'not_found'          => __( 'No solutions found', 'ss_framework' ),
		'not_found_in_trash' => __( 'No solutions found in Trash', 'ss_framework' ),
		'parent_item_colon'  => __( 'Parent Solution:', 'ss_framework' ),
		'menu_name'          => __( 'Solutions', 'ss_framework' ),
	);

	$args = array(
		'labels'              => $labels,
		'hierarchical'        => true,
		'supports'            => array( 'title', 'editor', 'thumbnail', 'page-attributes' ),
		'taxonomies'          => array( 'portfolio-categories', 'post_tag', 'portfolio-tags' ),
		'public'              => true,
		'show_ui'             => true,
		'show_in_menu'        => true,
		'show_in_nav_menus'   => true,
		'publicly_queryable'  => true,
		'exclude_from_search' => false,
		'has_archive'         => true,
		'query_var'           => true,
		'can_export'          => true,
		'rewrite'             => array( 'slug' => 'solution' ),
		'capability_type'     => 'post',
		'menu_position'       => null,
		'menu_icon'           => SS_BASE_URL . 'functions/assets/img/icon-portfolio.png'
	);

	register_post_type( 'solutions', apply_filters( 'ss_framework_register_post_type_solutions', $args ) );

} 
add_action('init', 'ss_framework_register_post_type_solutions');

// Register Taxonomy: 'Categories'
function ss_framework_register_taxonomy_categories() {

	$labels = array(
		'name'                       => __( 'Categories', 'ss_framework' ),
		'singular_name'              => __( 'Category', 'ss_framework' ),
		'search_items'               => __( 'Search Categories', 'ss_framework' ),
		'popular_items'              => __( 'Popular Categories', 'ss_framework' ),
		'all_items'                  => __( 'All Categories', 'ss_framework' ),
		'parent_item'                => __( 'Parent Category', 'ss_framework' ),
		'parent_item_colon'          => __( 'Parent Category:', 'ss_framework' ),
		'edit_item'                  => __( 'Edit Category', 'ss_framework' ),
		'update_item'                => __( 'Update Category', 'ss_framework' ),
		'add_new_item'               => __( 'Add New Category', 'ss_framework' ),
		'new_item_name'              => __( 'New Category', 'ss_framework' ),
		'separate_items_with_commas' => __( 'Separate categories with commas', 'ss_framework' ),
		'add_or_remove_items'        => __( 'Add or remove Categories', 'ss_framework' ),
		'choose_from_most_used'      => __( 'Choose from most used Categories', 'ss_framework' ),
		'menu_name'                  => __( 'Categories', 'ss_framework' ),
	);

	$args = array(
		'labels'            => $labels,
		'public'            => true,
		'show_in_nav_menus' => true,
		'show_ui'           => true,
		'show_tagcloud'     => false,
		'hierarchical'      => true,
		'rewrite'           => array( 'slug' => 'portfolio-category' ),
		'query_var'         => true
	);

	register_taxonomy( 'portfolio-categories', array('portfolio', 'solutions', 'questions'), apply_filters( 'ss_framework_register_taxonomy_categories', $args ) );

} 
add_action( 'init', 'ss_framework_register_taxonomy_categories' );



// Register Taxonomy: 'Tags for examples'
function ss_framework_register_taxonomy_tags() {

	$labels = array(
		'name'                       => __( 'Tags', 'ss_framework' ),
		'singular_name'              => __( 'Tag', 'ss_framework' ),
		'search_items'               => __( 'Search Tags', 'ss_framework' ),
		'popular_items'              => __( 'Popular Tags', 'ss_framework' ),
		'all_items'                  => __( 'All Tags', 'ss_framework' ),
		'parent_item'                => __( 'Parent Tag', 'ss_framework' ),
		'parent_item_colon'          => __( 'Parent Tag:', 'ss_framework' ),
		'edit_item'                  => __( 'Edit Tag', 'ss_framework' ),
		'update_item'                => __( 'Update Tag', 'ss_framework' ),
		'add_new_item'               => __( 'Add New Tag', 'ss_framework' ),
		'new_item_name'              => __( 'New Tag', 'ss_framework' ),
		'separate_items_with_commas' => __( 'Separate Tags with commas', 'ss_framework' ),
		'add_or_remove_items'        => __( 'Add or remove Tags', 'ss_framework' ),
		'choose_from_most_used'      => __( 'Choose from most used Tags', 'ss_framework' ),
		'menu_name'                  => __( 'Tags', 'ss_framework' ),
	);

	$args = array(
		'labels'            => $labels,
		'public'            => true,
		'show_in_nav_menus' => true,
		'show_ui'           => true,
		'show_tagcloud'     => false,
		'hierarchical'      => true,
		'rewrite'           => array( 'slug' => 'portfolio-tag' ),
		'query_var'         => true
	);

	register_taxonomy( 'portfolio-tags', array('portfolio', 'solutions', 'questions'), apply_filters( 'ss_framework_register_taxonomy_tags', $args ) );

} 
add_action( 'init', 'ss_framework_register_taxonomy_tags' );



// Register Taxonomy: 'Team Categories'
function ss_framework_register_taxonomy_bio_categories() {

	$labels = array(
		'name'                       => __( 'Categories', 'ss_framework' ),
		'singular_name'              => __( 'Category', 'ss_framework' ),
		'search_items'               => __( 'Search Categories', 'ss_framework' ),
		'popular_items'              => __( 'Popular Categories', 'ss_framework' ),
		'all_items'                  => __( 'All Categories', 'ss_framework' ),
		'parent_item'                => __( 'Parent Category', 'ss_framework' ),
		'parent_item_colon'          => __( 'Parent Category:', 'ss_framework' ),
		'edit_item'                  => __( 'Edit Category', 'ss_framework' ),
		'update_item'                => __( 'Update Category', 'ss_framework' ),
		'add_new_item'               => __( 'Add New Category', 'ss_framework' ),
		'new_item_name'              => __( 'New Category', 'ss_framework' ),
		'separate_items_with_commas' => __( 'Separate categories with commas', 'ss_framework' ),
		'add_or_remove_items'        => __( 'Add or remove Categories', 'ss_framework' ),
		'choose_from_most_used'      => __( 'Choose from most used Categories', 'ss_framework' ),
		'menu_name'                  => __( 'Categories', 'ss_framework' ),
	);

	$args = array(
		'labels'            => $labels,
		'public'            => true,
		'show_in_nav_menus' => true,
		'show_ui'           => true,
		'show_tagcloud'     => false,
		'hierarchical'      => true,
		'query_var'         => true,
		'rewrite'           => array( 'slug' => 'bio-category' )
		
	);

	register_taxonomy( 'biography-categories', array('team'), apply_filters( 'ss_framework_register_taxonomy_bio_categories', $args ) );

} 
add_action( 'init', 'ss_framework_register_taxonomy_bio_categories' );

// Custom colums for 'Portfolio'
function ss_framework_edit_portfolio_columns() {

	$columns = array(
		'cb'                   => '<input type="checkbox" />',
		'thumbnail'            => __( 'Thumbnail', 'ss_framework' ),
		'title'                => __( 'Name', 'ss_framework' ),
		'portfolio-categories' => __( 'Categories', 'ss_framework' ),
		'date'                 => __( 'Date', 'ss_framework' )
	);

	return $columns;

}
add_action('manage_edit-portfolio_columns', 'ss_framework_edit_portfolio_columns');

// Custom colums content for 'Portfolio'
function ss_framework_manage_portfolio_columns( $column, $post_id ) {

	global $post;

	switch ( $column ) {

		case 'thumbnail':

			echo '<a href="' . get_edit_post_link( $post_id ) . '">' . get_the_post_thumbnail( $post_id, array(50, 50), array( 'title' => get_the_title( $post_id ) ) ) . '</a>';

			break;

		case 'portfolio-categories':

			$terms = get_the_terms( $post_id, 'portfolio-categories' );

			if ( empty( $terms ) )
				break;

				$out = array();

				foreach ( $terms as $term ) {
					
					$out[] = sprintf( '<a href="%s">%s</a>',
						esc_url( add_query_arg( array( 'post_type' => $post->post_type, 'portfolio-categories' => $term->slug ), 'edit.php' ) ),
						esc_html( sanitize_term_field( 'name', $term->name, $term->term_id, 'portfolio-categories', 'display' ) )
					);

				}

				echo join( ', ', $out );

			break;
		
		default:
			break;
	}

}
add_action('manage_portfolio_posts_custom_column', 'ss_framework_manage_portfolio_columns', 10, 2);

/* ---------------------------------------------------------------------- */
/*	Slider
/* ---------------------------------------------------------------------- */

// Register Custom Post Type: 'Slider'
function ss_framework_register_post_type_slider() {

	$labels = array(
		'name'               => __( 'Sliders', 'ss_framework' ),
		'singular_name'      => __( 'Slider', 'ss_framework' ),
		'add_new'            => __( 'Add New', 'ss_framework' ),
		'add_new_item'       => __( 'Add New Slider', 'ss_framework' ),
		'edit_item'          => __( 'Edit Slider', 'ss_framework' ),
		'new_item'           => __( 'New Slider', 'ss_framework' ),
		'view_item'          => __( 'View Slider', 'ss_framework' ),
		'search_items'       => __( 'Search Sliders', 'ss_framework' ),
		'not_found'          => __( 'No sliders found', 'ss_framework' ),
		'not_found_in_trash' => __( 'No sliders found in Trash', 'ss_framework' ),
		'parent_item_colon'  => __( 'Parent Slider:', 'ss_framework' ),
		'menu_name'          => __( 'Sliders', 'ss_framework' ),
	);

	$args = array(
		'labels'              => $labels,
		'hierarchical'        => false,
		'supports'            => array('title'),
		'taxonomies'          => array(''),
		'public'              => true,
		'show_ui'             => true,
		'show_in_menu'        => true,
		'show_in_nav_menus'   => true,
		'publicly_queryable'  => true,
		'exclude_from_search' => true,
		'has_archive'         => false,
		'query_var'           => true,
		'can_export'          => true,
		'rewrite'             => array( 'slug' => 'slider' ),
		'capability_type'     => 'post',
		'menu_position'       => null,
		'menu_icon'           => SS_BASE_URL . 'functions/assets/img/icon-slider.png'
	);

	register_post_type( 'slider', apply_filters( 'ss_framework_register_post_type_slider', $args ) );

} 
add_action('init', 'ss_framework_register_post_type_slider');

// Custom colums for 'Slider'
function ss_framework_edit_slider_columns() {

	$columns = array(
		'cb'          => '<input type="checkbox" />',
		'title'       => __( 'Name', 'ss_framework' ),
		'slide_count' => __( 'Slide Count', 'ss_framework' ),
		'shortcode'   => __( 'Shortcode', 'ss_framework' )
	);

	return $columns;

}
add_action('manage_edit-slider_columns', 'ss_framework_edit_slider_columns');

// Custom colums content for 'Slider'
function ss_framework_manage_slider_columns( $column, $post_id ) {

	global $post;

	switch ( $column ) {

		case 'slide_count':

			$slider_slides = get_post_meta( $post->ID, 'ss_slider_slides', true ) ? get_post_meta( $post->ID, 'ss_slider_slides', true ) : false;

			$slide_count = $slider_slides ? count( $slider_slides ) : 0;
			
			echo $slide_count;

			break;

		case 'shortcode':
			
			echo '<span class="shortcode-field">[slider id="'. $post->post_name . '"]</span>';

			break;
		
		default:
			break;
	}

}
add_action('manage_slider_posts_custom_column', 'ss_framework_manage_slider_columns', 10, 2);

// Sortable custom columns for 'Slider'
function ss_framework_sortable_slider_columns( $columns ) {

	$columns['slide_count'] = 'slide_count';

	return $columns;

}
add_action('manage_edit-slider_sortable_columns', 'ss_framework_sortable_slider_columns');

// Change default title for 'Slider'
function ss_framework_change_slider_title( $title ){

	$screen = get_current_screen();

	if ( $screen->post_type == 'slider' )
		$title = __('Enter slider name here', 'ss_framework');

	return $title;

}

add_filter('enter_title_here', 'ss_framework_change_slider_title');

/* ---------------------------------------------------------------------- */
/*	Team
/* ---------------------------------------------------------------------- */

// Register Custom Post Type: 'Team'
function ss_framework_register_post_type_team() {

	$labels = array(
		'name'               => __( 'team', 'ss_framework' ),
		'singular_name'      => __( 'Bio', 'ss_framework' ),
		'add_new'            => __( 'Add New', 'ss_framework' ),
		'add_new_item'       => __( 'Add New Bio', 'ss_framework' ),
		'edit_item'          => __( 'Edit Bio', 'ss_framework' ),
		'new_item'           => __( 'New Bio', 'ss_framework' ),
		'view_item'          => __( 'View Bio', 'ss_framework' ),
		'search_items'       => __( 'Search Biographies', 'ss_framework' ),
		'not_found'          => __( 'No Biography found', 'ss_framework' ),
		'not_found_in_trash' => __( 'No biographies found in Trash', 'ss_framework' ),
		'parent_item_colon'  => __( 'Parent Biographies:', 'ss_framework' ),
		'menu_name'          => __( 'Biographies', 'ss_framework' ),
	);

	$args = array(
		'labels'              => $labels,
		'hierarchical'        => false,
		'supports'            => array( 'title', 'editor', 'thumbnail' ),
		'taxonomies'          => array('biography-categories'),
		'public'              => true,
		'show_ui'             => true,
		'show_in_menu'        => true,
		'show_in_nav_menus'   => true,
		'publicly_queryable'  => true,
		'exclude_from_search' => false,
		'has_archive'         => false,
		'query_var'           => true,
		'can_export'          => true,
		'rewrite'             => array( 'slug' => 'bio' ),
		'capability_type'     => 'post',
		'menu_position'       => null,
		'menu_icon'           => SS_BASE_URL . 'functions/assets/img/icon-team.png'
	);

	register_post_type( 'team', apply_filters( 'ss_framework_register_post_type_team', $args ) );

} 
add_action('init', 'ss_framework_register_post_type_team');

// Custom colums for 'Team'
function ss_framework_edit_team_columns() {

	$columns = array(
		'cb'          => '<input type="checkbox" />',
		'thumbnail'   => __( 'Photo', 'ss_framework' ),
		'title'       => __( 'Name', 'ss_framework' ),
		'job_title'   => __( 'Job Title', 'ss_framework' ),
		'description' => __( 'Description', 'ss_framework' ),
		'shortcode'   => __( 'Shortcode', 'ss_framework' )
	);

	return $columns;

}
add_action('manage_edit-team_columns', 'ss_framework_edit_team_columns');

// Custom colums content for 'Team'
function ss_framework_manage_team_columns( $column, $post_id ) {

	global $post;

	switch ( $column ) {

		case 'thumbnail':

			echo '<a href="' . get_edit_post_link( $post_id ) . '">' . get_the_post_thumbnail( $post_id, array(50, 50), array( 'title' => get_the_title( $post_id ) ) ) . '</a>';

			break;

		case 'job_title':
			
			echo ss_framework_get_custom_field( 'ss_job_title', $post_id );

			break;

		case 'description':
			
			echo get_the_excerpt();

			break;

		case 'shortcode':
			
			echo '<span class="shortcode-field">[team_member id="'. $post->post_name . '"]</span>';

			break;
		
		default:
			break;
	}

}
add_action('manage_team_posts_custom_column', 'ss_framework_manage_team_columns', 10, 2);

// Sortable custom columns for 'Team'
function ss_framework_sortable_team_columns( $columns ) {

	$columns['job_title'] = 'job_title';

	return $columns;

}
add_action('manage_edit-team_sortable_columns', 'ss_framework_sortable_team_columns');

// Add styles for custom column page
function ss_framework_add_column_custom_styles() {

	$screen = get_current_screen();

	if( $screen->post_type == 'slider' || $screen->post_type == 'team' )
		echo '<style> #posts-filter .column-shortcode .shortcode-field { background: #fafafa; border: 1px solid #e6e6e6; -webkit-border-radius: 3px; -moz-border-radius: 3px; border-radius: 3px; display: inline-block; padding: 2px 5px; }</style>';

	if( $screen->post_type == 'portfolio' || $screen->post_type == 'team' )
		echo '<style> #posts-filter .column-thumbnail { width: 8%; }</style>';

}
add_action('admin_head', 'ss_framework_add_column_custom_styles');