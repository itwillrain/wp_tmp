#!/usr/bin/env bash
set -e 
source config.sh
docker exec -u www-data -it ${PROJECT}-php7 sh /usr/local/bin/init.sh

#環境変数作成
cat << EOT > ./.env
NODE_PROJECT = ${PROJECT}
NODE_PORT = ${PORT}
EOT

#テーマディレクトリを作成
mkdir ./wp/wp-content/themes/${PROJECT}
touch ./src/style.css
cat << EOT > ./src/style.css
/*
Theme Name: ${PROJECT}
Theme URL: ${URI}
Author: ${AUTHOR}
*/
EOT
