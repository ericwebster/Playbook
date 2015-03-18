<?php if( is_page('cases') || is_page('solutions') ){ ?>
<!-- TODO: REMOVE AFTER COMPLETION -->
				<div id="searchTESTCONTAINER" class="one-fourth"> 
						<div class="search-box infobox">
						<form id="searchform" action="<?php echo esc_url( home_url( '/' ) ); ?>" method="get">
						<label for="s" class="screenreader">Search</label>
						<!-- <input class="field" name="s" id="s" placeholder="Search ..." type="text"> -->
						<input class="submit large" name="submit" id="searchsubmit" value="Search" type="submit">
						</form>	
					</div>
				</div>

<?php } ?>