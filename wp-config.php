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
define('DB_NAME', 'barcoding');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         'iW0,lr]Leodl0{O_d%#_HMm2:]Q)K8&ws-5)nU`2>dW9y?,St5-?$Gyf+@L]v,[6');
define('SECURE_AUTH_KEY',  '~Bl3St<}d9R{4 w&Tm}Cu]#.C`p[r0vS|t*xoNK[zo@?jS}e[nao@U+T?>G#QU~b');
define('LOGGED_IN_KEY',    'p8a9&_6XA+WhhM,^C&~ejjv#{X8yZ&,-2+SInYXFhr}0[IyZ>0Ueynp.O!ii}d</');
define('NONCE_KEY',        'DE4,KJZMVv&lVxGR;9BFC-M]WuW(SabJQAOF~vtJ}B7{4-kf]nb2`XZW$l[R|[dJ');
define('AUTH_SALT',        'jCvOz=~c(Vl_(Vf:f 6E|>TNd*6RXuy&XEt%gBATnnEhX4B,*?`dTo@,:Y+o8NmW');
define('SECURE_AUTH_SALT', 'Re14mYt8#DzY&v5sSCb.d(;&hTjb1-$OTx69Avjd:zPsZ6VZV!i-Vb7N&:_[o~~&');
define('LOGGED_IN_SALT',   'nW.3~gX%jTln9t!jxUL^BmzR=3oI6ytgM,Ig{)I;QPw$~@3IU+Wl=[vXO<AV@M9m');
define('NONCE_SALT',       '^EG+[pHfQOC(d0qOkPm|u}@.:;>H)!;(d(IC)V5h6>KEz$:_L9Ios!KAN{fCr]3O');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'bar_';

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
