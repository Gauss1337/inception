cd /var/www/html/wordpress
sed -i "s/_ENV_DB_PASSWORD/$_WORDPRESS_DB_PASSWORD/g" wp-conf.php
sed -i "s/_ENV_DB_NAME/$_WORDPRESS_DB_NAME/g" wp-conf.php
sed -i "s/_ENV_DB_HOST/$_WORDPRESS_DB_HOST/g" wp-conf.php
sed -i "s/_ENV_DB_USER/$_WORDPRESS_DB_USER/g" wp-conf.php
php-fpm7.3 -F -R
