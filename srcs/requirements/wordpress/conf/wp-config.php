<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'lchokri' );

/** Database password */
define( 'DB_PASSWORD', 'msqpwd' );

/** Database hostname */
define( 'DB_HOST', 'mariadb:3306' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Caz<H(l4OH+f2bE5tyf[8 @?NN{=&^B5l}]_)Le%D?C+1A$z&j@I]*WBRa|&0&);' );
define( 'SECURE_AUTH_KEY',  'cm@B0%f$N?i Q`6-HgDQc&yF0=i3 uvG%@x&$hrnKpmm2N7E35B+5^oGNX|opjxq' );
define( 'LOGGED_IN_KEY',    'lu!u4XoQ4L3&w)ig1$2I{KakN6N%iy<*dxhxr50vcx3GkLd]1Yx^n<%^z+$w9#&m' );
define( 'NONCE_KEY',        'x$(`sxk^p1efS;GC$B*X?9&j|%kjc0bUx[yuTO([bmE 076<J>7OSn#NpVE]$eTn' );
define( 'AUTH_SALT',        'acL%X{t?,|RRv-4jOMu,V|A.!V256?&m-^KwS0G*-f:/x7b.n.YY60?J[<gjKSb4' );
define( 'SECURE_AUTH_SALT', '%txx~:9@4`I8pFg~czUu65g9jUZ{IW4PhB6f=Z_6e#([yw0r&!n0,5+&`vbi=4=E' );
define( 'LOGGED_IN_SALT',   'Jko&gtMhm98]2|zG%g!1*?5EZb2+s#|mEe;.ii[%t3i}]9wm4flxC]BA}Ddz]SV=' );
define( 'NONCE_SALT',       'vHUpllg_S`G%aeV#q@=.%6t!e0DkBrqH4~4O:2&_1RQ}I(%*=U$q/wV~ea,MEZp+' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
