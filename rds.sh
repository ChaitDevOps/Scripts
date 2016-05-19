#!/bin/bash
yum install https php php-mysql -y
yum update -y
chkconfig httpd on 
service httpd start
echo "<?php phpinfo();?>" > /var/www/html/index.php
cd /var/www/html
wget https://s3.ap-northeast-2.amazonaws.com/arsenalbucket/connect.php