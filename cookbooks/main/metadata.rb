name             'cookbooks/main'
maintainer       'YOUR_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures cookbooks/main'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "openssl"
depends "mysql"
depends "php"
depends "phpmyadmin"
depends "apache2"