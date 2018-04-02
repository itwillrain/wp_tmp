#!/bin/sh
wp core config --dbname=wordpress --dbuser=admin --dbpass=root --dbhost=mysql --path=/home/kusanagi/kusanagi/DocumentRoot/
wp core install --url=http://localhost:8080 --title=neopa --admin_user=admin --admin_password=root --admin_email=contact@neopa.jp --path=/home/kusanagi/kusanagi/DocumentRoot/

#いらないプラグインをアンインストール
wp plugin uninstall hello --path=/home/kusanagi/kusanagi/DocumentRoot/
wp theme uninstall twentyfifteen twentyseventeen twentysixteen  --path=/home/kusanagi/kusanagi/DocumentRoot/

#便利なプラグイン達を一気にインストール
echo "ほなとりあえず、プラグイン入れまっか？  [Y/N]"

read ANSWER1

case "$ANSWER1" in
    "" | "Y" | "y" | "yes" | "Yes" | "YES" )
      wp plugin install wp-multibyte-patch       theme-check       backwpup       wp-total-hacks       debug-bar       debug-bar-extender       customizer-theme-resizer       intuitive-custom-post-order       regenerate-thumbnails       advanced-custom-fields       --activate       --path=/home/kusanagi/kusanagi/DocumentRoot/
      ;;
    * ) echo "プラグインはいれてないよ〜";;
esac
