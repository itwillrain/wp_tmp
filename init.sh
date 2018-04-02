#!/usr/bin/env bash
set -e 

CONFIG="config.sh"

echo "#!/usr/bin/env bash" > ${CONFIG}
echo "set -e" >> ${CONFIG}

echo "- プロジェクト名をおなしゃす" 
while read -p "" PROJECT ; do
    if [ -z ${PROJECT} ]; then
        echo "入力して下さい。"
        continue
    fi
    echo  "PROJECT=\"${PROJECT}\"" >> ${CONFIG}
    echo  "export PROJECT=\"${PROJECT}\"" >> ${CONFIG}
    break
done

echo "- Authorはだれでっか？" 
while read -p "" AUTHOR ; do
    if [ -z ${AUTHOR} ]; then
        echo "入力して下さい。"
        continue
    fi
    echo  "AUTHOR=\"${AUTHOR}\"" >> ${CONFIG}
    echo  "export AUTHOR=\"${AUTHOR}\"" >> ${CONFIG}
    break
done

echo "- テーマのURIをいれたってや" 
while read -p "" URI ; do
    if [ -z ${URI} ]; then
        echo "入力して下さい。"
        continue
    fi
    echo  "URI=\"${URI}\"" >> ${CONFIG}
    echo  "export URI=\"${URI}\"" >> ${CONFIG}
    break
done
echo "- WordpressのPORTはどないしましょ？1024番以上" 
while read -p "" PORT ; do
    if [ -z ${PORT} ]; then
        echo "入力して下さい。"
        continue
    fi
    echo  "PORT=\"${PORT}\"" >> ${CONFIG}
    echo  "export PORT=\"${PORT}\"" >> ${CONFIG}
    break 
done

echo "- ${CONFIG}を作っといたで！"
echo "- ほなsh wp_init.sh叩いたってや！"
exit 0

