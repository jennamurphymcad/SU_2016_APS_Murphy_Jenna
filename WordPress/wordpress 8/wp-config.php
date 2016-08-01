<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'socksleuth_db');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ']ii1Z+_jWfx+[?&0k|Q%}BwNpkwZc]k+2FycNz0&<W!R+8TP80[HsQ+b2;bN}SA ');
define('SECURE_AUTH_KEY',  '$u9WGwgj_=a]d)m(onC:[x4G1;mBdyY=_H+mnGsQ8+lp*QeF!F,Kt&Fw~=)xar-B');
define('LOGGED_IN_KEY',    '~h_AYYmzyY#zc->Lm+}w5txF4Txv*uv0b|S&4xub3E6&+pO.ghvrTF<b91sCTJG(');
define('NONCE_KEY',        'c/!#T+2p0v6bg^}@eaB@CyBAX//Sg^nV-kt,Vkj3122Xw8$.?}Th[GrmII5yV-PB');
define('AUTH_SALT',        '&<#b|$^jX_:/sJdVkM~=<DB:7!<#`}{~9}}@-_P8R$0L&$!4(l`R}d_oZ#Y9kI.P');
define('SECURE_AUTH_SALT', ':>[*p!g~_k-O|2a?HvodvmLA$vDV}/p1+A(IRgTbBz {=/VLrc5eq,3O&=.-R0X3');
define('LOGGED_IN_SALT',   'qcf2mu^!&p`pEtovHhv?&}2iK%B^*@-_uWFl8-]l1BAkdb$++2H`Qug:rK(|vOz3');
define('NONCE_SALT',       'TuB7HPS>BCp2%>*t<8-O;z[HIAtYdgi:Ut+X~Mm/0V!Bhn>dsE}G:D {x6:uXyj^');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
