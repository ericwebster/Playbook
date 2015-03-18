var url = window.location.pathname
var filename = url.substring(url.lastIndexOf('/')+1);
var warning = "Before taking this action, we at WP Engine recommend that you create a Restore Point of your site. This will allow you undo this action within minutes.";

//function to determine whether query args are present
function has_args(str) {	
	var querystring = window.location.href.split('?',2);
	var querystring = querystring[1];
	if ( !querystring ) {
		return false;
	} else {
		if( querystring.indexOf(str) != '-1' ) 
		{
			return true;
		} else {
			return false;
		}
	}
}

jQuery(document).ready(function($) {    	    			
//apprise implementation

  if(filename == 'update-core.php' && $('form.upgrade').length > 0 && wpe.popup_disabled != 1 ) {
  	$('form[name="upgrade"] input[type=submit]').click(function(e) { e.preventDefault(); });
  	$('form[name="upgrade"] input[type=submit]').attr('onclick','wpe_validate_upgrade("upgrade");');

  	$('form[name="upgrade-plugins"] input[type=submit]').click(function(e) { e.preventDefault(); });
  	$('form[name="upgrade-plugins"] input[type=submit]').attr('onclick','wpe_validate_upgrade("upgrade-plugins");');  	
  	
  	$('form[name="upgrade-themes"] input[type=submit]').click(function(e) { e.preventDefault(); });
  	$('form[name="upgrade-themes"] input[type=submit]').attr('onclick','wpe_validate_upgrade("upgrade-themes");');  	
  } else if(filename == 'plugins.php' && wpe.popup_disabled !=  1) {
  	
  	if($('.update-message').length > 0 ) {
	  	$('.update-message a').each(function(i,obj) {
	  		var txt = $(obj).text();
	  		if(txt == 'update now') {
	  			$(this).click(function(e) { e.preventDefault(); });
	  			$(this).attr('onclick','wpe_upgrade_link("'+$(obj).attr('href')+'");');
	  		}
	  	});	
	  }
	  
	$('#doaction').click(function(e) { e.preventDefault(); });
	$('#doaction').attr('onclick','wpe_validate_bulk_form();');
		
  } else if( filename == 'plugin-install.php' && wpe.popup_disabled != 1 && !has_args("tab=favorites") ) {
	
	$('a.install-now').each(function() { 
			$(this).click(function(e) { e.preventDefault(); });
			$(this).attr('onclick','wpe_upgrade_link("'+$(this).attr('href')+'");');
	});
	
	$('input[type="submit"]').live('click',function(e) {
		if( $(this).attr('name') != 'plugin-search-input' ) { 
			e.preventDefault();
			$(this).parent().attr('id','form-to-submit'); 
			$('input[type="submit"]').attr('onclick','wpe_validate_install()');  	
		}	
	});
  }

});

/**
	* Accepts the form identifier and applies the popup confirmation
	*
	*/
function wpe_validate_upgrade(form) {
	apprise(warning, {'confirm':true,'textCancel': "Yes, take me to my WPEngine Dashboard.",'textOk':'No thanks, I already did this.' }, function(r) { 
		if(r != false) {
			append = '<input type="hidden" name="upgrade" value="1" />';
			jQuery('form[name="'+form+'"]').append(append);
			jQuery('form[name="'+form+'"]').submit(); 
		} else {
			window.location.href = 'https://my.wpengine.com/customers/'+wpe.account+'/checkpoints/new';
		} 
  });
}

function wpe_validate_install() {
	apprise(warning, {'confirm':true,'textCancel': "Yes, take me to my WPEngine Dashboard.",'textOk':'No thanks, I already did this.' }, function(r) { 
		if(r != false) {
			append = '<input type="hidden" value="Install Now" />';
			jQuery('form').append(append);
			jQuery('#form-to-submit').submit();
		} else {
			window.location.href = 'https://my.wpengine.com/customers/'+wpe.account+'/checkpoints/new';
		} 
  });
}


function wpe_validate_bulk_form() {
	if(jQuery('select[name="action"] option:selected').val() == 'update-selected') {
		apprise(warning, {'confirm':true,'textCancel': "Yes, take me to my WPEngine Dashboard.",'textOk':'No thanks, I already did this.' }, function(r) { 
			if(r != false) {
				jQuery('#doaction').parent().parent().parent().submit();
			} else {
				window.location.href = 'https://my.wpengine.com/customers/'+wpe.account+'/checkpoints/new';
			}
		});
	} else {
		jQuery('#doaction').parent().parent().parent().submit();
	}
}

function wpe_upgrade_link(link) {
	apprise(warning, {'confirm':true,'textCancel': "Yes, take me to my WPEngine Dashboard.",'textOk':'No thanks, I already did this.' }, function(r) { 
		if(r != false) {
			window.location.href = link;
		} else {
			window.location.href = 'https://my.wpengine.com/customers/'+wpe.account+'/checkpoints/new';
		} 
  });
} 

function wpe_deploy_staging() {
	jQuery(function($) {
		$('#deploy-from-staging').slideToggle();
		$('.chzn-select').chosen()
		$('select[name="db_mode"]').change(function() {
			if( $(this).attr('name') == 'db_mode' && $(this).find('option:selected').val() == 'tables') {
				$('p.table-select').slideDown();
			} else {
				$('p.table-select').slideUp();
			}
		});
		
		$('#submit-deploy').click(function(e) {
			e.preventDefault();
			$('#dfs-response').remove();
			var data = {
				'email'		: $('input[name="email"]').val(),
				'tables'	: $('select[name="tables[]"]').val(),
				'db_mode'	: $('select[name="db_mode"]').val(),
				'action'	: 'wpe-ajax',
				'wpe-action'	: 'deploy-staging',
			}
			$('form#deploy-from-staging').slideUp().after('<div id="dfs-response" class="alert alert-success"><span class="spinner" style="display:inline; float:left; margin: 0 10px 0 0 ; padding:0;"></span>Please wait ..</div>');
			$.post(ajaxurl,data,function(resp) {
				$('#dfs-response').html(resp);
			});
		});	
	});
}          
  
/**
	* Displays popup
	* http://thrivingkings.com/apprise/
	*/
          
function apprise(string, args, callback) {
	var $ = jQuery.noConflict();
	var default_args =
		{
		'confirm'		:	false, 		// Ok and Cancel buttons
		'verify'		:	false,		// Yes and No buttons
		'input'			:	false, 		// Text input (can be true or string for default text)
		'animate'		:	false,		// Groovy animation (can true or number, default is 400)
		'textOk'		:	'Ok',		// Ok button default text
		'textCancel'	:	'Cancel',	// Cancel button default text
		'textYes'		:	'Yes',		// Yes button default text
		'textNo'		:	'No',		// No button default text
		'cancelable'		: 	false,
		'options'		: 	false
		}
	
	if(args) 
		{
		for(var index in default_args) 
			{ if(typeof args[index] == "undefined") args[index] = default_args[index]; } 
		}

	var aHeight = $(document).height();
	var aWidth = $(document).width();
	$('body').append('<div class="appriseOverlay" id="aOverlay"></div>');
	$('.appriseOverlay').css('height', aHeight).css('width', aWidth).fadeIn(100);
	$('body').append('<div class="appriseOuter"></div>');
	$('.appriseOuter').append('<div class="appriseInner"></div>');
	$('.appriseInner').append(string);
	$('.appriseOuter').css("left", ( $(window).width() - $('.appriseOuter').width() ) / 2+$(window).scrollLeft() + "px");
	//add a cancel button
    	$('.closeit a').live('click', function(e) { e.preventDefault(); $('.appriseOverlay,.appriseOuter').remove(); });
 	if(args) {
		if( args['cancelable'] ) {
			$('.appriseOuter').prepend('<div class="closeit"><a href="#">cancel</a></div>');
		}
		if(args['animate'])
			{ 
			var aniSpeed = args['animate'];
			if(isNaN(aniSpeed)) { aniSpeed = 400; }
			$('.appriseOuter').css('top', '-200px').show().animate({top:"100px"}, aniSpeed);
			}
		else
			{ $('.appriseOuter').css('top', '100px').fadeIn(200); }
		}
	else
		{ $('.appriseOuter').css('top', '100px').fadeIn(200); }
    
    
    $('.appriseInner').append('<div class="aButtons"></div>');
    if(args)
    	{
		if(args['confirm'] )
			{ 
			$('.aButtons').append('<button value="ok">'+args['textOk']+'</button>');
			$('.aButtons').append('<button value="cancel">'+args['textCancel']+'</button>'); 
		}
		else if(args['verify'])
			{
			$('.aButtons').append('<button value="ok">'+args['textYes']+'</button>');
			$('.aButtons').append('<button value="cancel">'+args['textNo']+'</button>');
		}
		else if(typeof(args['options']) == 'function' ) {
			args['options']();
		}
		else if(typeof(args['options']) == 'object')
			{
				for(i = 0; i < args['options'].length; i++) {
					$('.aButtons').append('<button value="'+args['options'][i]['db_mode']+'" >'+args['options'][i]['label']+'</button>');
				}
		}
		else
			{ $('.aButtons').append('<button value="ok">'+args['textOk']+'</button>'); }
		}
    else
    	{ $('.aButtons').append('<button value="ok">Ok</button>'); }
	//add in input	
	if(args)
	{
	if(args['input'])
		{
		if(typeof(args['input'])=='string')
			{
			$('.appriseInner').append('<div class="aInput"><input type="text" class="aTextbox" t="aTextbox" value="'+args['input']+'" /></div>');
			}
		else if (typeof(args['input']) =='object') 
			{
				$(args['input'].before).before('<div class="aInput"><span>'+args['input'].label+'</span><input type="text" class="aTextbox" value="'+args['input'].value+'" /></div>');
			}
		else
			{
				$('.appriseInner').append('<div class="aInput"><input type="text" class="aTextbox" t="aTextbox" /></div>');
				}
			$('.aTextbox').focus();
		}
	}

	$(document).keydown(function(e) 
		{
		if($('.appriseOverlay').is(':visible'))
			{
			if(e.keyCode == 13) 
				{ $('.aButtons > button[value="ok"]').click(); }
			if(e.keyCode == 27) 
				{ $('.aButtons > button[value="cancel"]').click(); }
			}
		});
	
	var aText = $('.aTextbox').val();
	if(!aText) { aText = false; }
	$('.aTextbox').keyup(function()
    	{ aText = $(this).val(); });
   
    $('.aButtons > button').click(function()
    	{
    	$('.appriseOverlay').remove();	
	$('.appriseOuter').remove();
    	if(callback) {
			var wButton = $(this).attr("value");
			if(wButton=='ok') { 
				if(args) {
					if(args['input'])
						{ callback(aText); }
					else
						{ callback(true); }
				} else { callback(true); }
			} else if( args['options'] ) {
					return_args = { 'option_val': wButton };
					if( args['input'] ) {
						return_args.text_val = aText;
					}
					callback(return_args);
			} else if(wButton=='cancel')
				{ callback(false); }
			}
		});
}//end apprise