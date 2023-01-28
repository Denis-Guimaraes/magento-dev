#!/bin/bash

php bin/magento setup:install \
--base-url=https://magento-dev.lndo.site \
--db-host=database \
--db-name=lamp \
--db-user=lamp \
--db-password=lamp \
--admin-firstname=admin \
--admin-lastname=admin \
--admin-email=admin@admin.com \
--admin-user=admin \
--admin-password=magento2 \
--language=en_US \
--currency=USD \
--timezone=America/Chicago \
--use-rewrites=1 \
--search-engine=elasticsearch7 \
--elasticsearch-host=search \
--elasticsearch-port=9200 \
--elasticsearch-index-prefix=magento2 \
--elasticsearch-timeout=15 \
--backend-frontname=admin \
--disable-modules=Magento_TwoFactorAuth \
--cleanup-database

php bin/magento sampledata:deploy
php bin/magento setup:upgrade
php bin/magento setup:di:compile