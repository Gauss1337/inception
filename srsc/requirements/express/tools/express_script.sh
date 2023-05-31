sed -i "s/_ENV_DB_PASSWORD/$_WORDPRESS_DB_PASSWORD/g" wp-config.php
sed -i "s/_ENV_DB_NAME/$_WORDPRESS_DB_NAME/g" wp-config.php
sed -i "s/_ENV_DB_HOST/$_WORDPRESS_DB_HOST/g" wp-config.php
sed -i "s/_ENV_DB_USER/$_WORDPRESS_DB_USER/g" wp-config.php
cd /var/www/html/wordpress
wp core install --url=ahakam.42.fr --title="9irsh" --admin_user=$_WORDPRESS_DB_USER --admin_password=$_WORDPRESS_DB_PASSWORD --admin_email=$_WORDPRESS_EMAIL --allow-root
wp user create $_WP_CLI_USER $_WP_CLI_EMAIL --user_pass=$_WP_CLI_PASSWORD --allow-root
php-fpm7.3 -F -R

