## STEP01  
初期化する
`sh init.sh`
プロジェクト名など聞かれるので入力する
config.sh作成されます。

## STEP02  
`sh wp_init.sh`
wpcli用のshell ファイルを作成
app/init.shが作成される。 

## STEP03  
docker compose する  
`./compose.sh start`

停止  
`./compose.sh stop`

再開  
`./compose.sh restart`

停止削除  
`./compose.sh down`

## STEP05
wordpressインストールとテーマの作成
`sh create-theme.sh`

## STEP04  
http://localhost${PORT}にアクセス  

usr: admin  
pass: root  

