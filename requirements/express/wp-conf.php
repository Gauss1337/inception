<?php
/**
 * WordPress Database Connection Settings
 */

 define( 'DB_NAME', '_ENV_DB_NAME');

/** MySQL database username */
define( 'DB_USER', '_ENV_DB_USER');

/** MySQL databassclse password */
define( 'DB_PASSWORD', '_ENV_DB_PASSWORD');

/** MySQL hostname */
define( 'DB_HOST', '_ENV_DB_HOST');

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts
 * Generate your own unique phrases using the WordPress Salt Generator: https://api.wordpress.org/secret-key/1.1/salt/
 */
define('AUTH_KEY',         'zSpZxZc$:]l:iUaAIQ(Jl0K/6QTu< $GH+9YF8*#y4_+PL(~XH-[/X]AfyGL~2Vx');
define('SECURE_AUTH_KEY',  '1cQ@-hR%5TQ_u3{2CvU#;apfyYLVG&2%q-Z)|[7X3j3~l,I}_Jwhv,PI$G$ $sD%');
define('LOGGED_IN_KEY',    '/-Tc;<23PHG:VB}X@u|(`& wO8:io(8EcZ|H(r+v|I dPt3,T:BxlJd 1yfbpb3%');
define('NONCE_KEY',        'G*wj:vrGc }r^.wa z1_U98fa^H-)fbNP9+EQ%c=+0{vi0pf|/zH[:ua20Q-B)e*');
define('AUTH_SALT',        'DvX4SLM9Oui5U4f@|<372jURO<y37M>zC97Jja1o7_)j]<r4qT9an`xU1:W1]Zmo');
define('SECURE_AUTH_SALT', 'eI`v|}Ka.KNt`$sL/m&!}{nW.-1qiTVX= dcD%--ai_y7=:yZs:[ 7k|G:2-923I');
define('LOGGED_IN_SALT',   'g|0fBnJX7jT%+8o;T0)c]83e(py+@_bWcA1;d%Au]la6)(3h8zS)DLH=5EF35[vZ');
define('NONCE_SALT',       '1>YGt?`|-A#jZ}-R*|HgFl@KB2]g$j+(=)kCd=^rP/}T9EFEWI|C0og6Fv~;;P7r';

/**
 * WordPress Database Table Prefix
 */
$table_prefix = 'wp_';

/**
 * Filesystem Paths
 */
define('ABSPATH', dirname(__FILE__) . '/');
define('WP_CONTENT_DIR', dirname(__FILE__) . '/wp-content');

/**
 * Debugging and Error Handling
 */
define('WP_DEBUG', false);
define('WP_DEBUG_LOG', false);

/**
 * Custom Settings
 */
// Add any additional custom settings or constants here

/* That's all, stop editing! Happy publishing. */

