<?php
# Database Configuration
define('DB_NAME','wp_playbook');
define('DB_USER','playbook');
define('DB_PASSWORD','nDmJ0PCB2ZCMoxzWMXdl');
define('DB_HOST','127.0.0.1');
define('DB_HOST_SLAVE','localhost');
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', 'utf8_unicode_ci');
$table_prefix = 'wp_';

# Security Salts, Keys, Etc
define('AUTH_KEY',         '7OLxQ]brwx(c3&R<Tp>X Z3:iVs8-pbXLT~ glCjoE`<-`o4GO;<[}rBA^tZH-kq');
define('SECURE_AUTH_KEY',  'Xs ;s+>jqO_!YV=[UgK48@ d5U*!s?RvAo}|XGm/uPN^+Z8V*j{AL{B}{v|(<R-~');
define('LOGGED_IN_KEY',    'lbtzoTxYT?gWN&j4b-EZ|OkVx(|NVrQSk?)n?I|X`Xe^B3cBk2+Cz>]~y2<&V)I=');
define('NONCE_KEY',        'f2x9t(Z|t?8x@v3|v^F&|9?N*0|!]j0/fBP:SE-p~ulkn&*wE_f(@/4NhLatkBz{');
define('AUTH_SALT',        'A7LB&m458`*Vo|$C6r!AMs9}2@|2ufw_#k$-+!#VA-ig<0&6@{TJ,b4RAUUMu`FY');
define('SECURE_AUTH_SALT', ']mk)2PQOJ3yDYIYff?)9EWQ9<{dX>OFX*n%CL_DQy9YY]b5pfStvC?I*&ZBfS5%>');
define('LOGGED_IN_SALT',   'UyT(U]NS2K6*sRLWw^tjg^7feA?cDm$SC#C#W?{dB!vTE{=4P:qmfRZz_u[}v#[!');
define('NONCE_SALT',       'Ikb*Tu}xq/HQC3oS5yh;q[2s0ny8xD*~to Ka0YsGIAY+TdvmvTVIW+URE)~M{.#');


# Localized Language Stuff

define('WP_CACHE',TRUE);

define('PWP_NAME','playbook');

define('FS_METHOD','direct');

define('FS_CHMOD_DIR',0775);

define('FS_CHMOD_FILE',0664);

define('PWP_ROOT_DIR','/nas/wp');

define('WPE_APIKEY','b84d398342e6c97d1b78b6dfc20d84c2e0077046');

define('WPE_FOOTER_HTML',"");

define('WPE_CLUSTER_ID','1047');

define('WPE_CLUSTER_TYPE','pod');

define('WPE_ISP',true);

define('WPE_BPOD',false);

define('WPE_RO_FILESYSTEM',false);

define('WPE_LARGEFS_BUCKET','largefs.wpengine');

define('WPE_CDN_DISABLE_ALLOWED',true);

define('DISALLOW_FILE_EDIT',FALSE);

define('DISALLOW_FILE_MODS',FALSE);

define('DISABLE_WP_CRON',false);

define('WPE_FORCE_SSL_LOGIN',false);

define('FORCE_SSL_LOGIN',false);

/*SSLSTART*/ if ( isset($_SERVER['HTTP_X_WPE_SSL']) && $_SERVER['HTTP_X_WPE_SSL'] ) $_SERVER['HTTPS'] = 'on'; /*SSLEND*/

define('WPE_EXTERNAL_URL',false);

define('WP_POST_REVISIONS',FALSE);

define('WP_TURN_OFF_ADMIN_BAR',false);

define('WPE_BETA_TESTER',false);

umask(0002);

$wpe_cdn_uris=array ();

$wpe_no_cdn_uris=array ();

$wpe_content_regexs=array ();

$wpe_all_domains=array (  0 => 'playbook.wpengine.com',);

$wpe_varnish_servers=array (  0 => 'pod-1047',);

$wpe_ec_servers=array ();

$wpe_largefs=array ();

$wpe_netdna_domains=array ();

$wpe_netdna_push_domains=array ();

$wpe_domain_mappings=array ();

$memcached_servers=array ();
define('WPLANG','');

# WP Engine ID


# WP Engine Settings






# That's It. Pencils down
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
require_once(ABSPATH . 'wp-settings.php');

$_wpe_preamble_path = null; if(false){}
