# DAMP-PMA
Apache, MariaDB (MySQL compatible), PHP and phpMyAdmin running in a docker container

## Usage
use `docker-compose up` to start the container, it will serve the files in the `DocumentRoot` folder. Navigate to http://localhost:8080 to see the content of your site. Go to http://localhost:9000 to access phpMyAdmin.

If your application needs write access to some file, use `sudo chown 33:33 <file>`, or `sudo chown 33:33 <directory> -R` for directories. This will give ownership of the file/folder to the Apache process and let it read and write to it.

### Wordpress
- Paste the contents of your Wordpress folder inside the `DocumentRoot` folder
- Inside the `DocumentRoot` folder, run `sudo chown 33:33 wp-content -R`. This will let you install themes, plugins and upload media content from the wordpress dashboard.
- Don't forget to add `define( 'FS_METHOD',  'direct');` to your wp-config.php file to let wordpress install themes and plugins directly on the file system.
- Start the container with `docker-compose up`
