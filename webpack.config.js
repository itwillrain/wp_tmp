require('dotenv').config();

const MODE = 'development';
// ソースマップの利用有無(productionのときはソースマップを利用しない)
const enabledSourceMap = (MODE === 'development');


module.exports = {
    //productionにするとuglifyされる
    mode: MODE,
    module: {
        rules: [
            {
                test: /\.scss/,
                use: [
                    // linkタグに出力する機能
                    'style-loader',
                    // CSSをバンドルするための機能
                    {
                        loader: 'css-loader',
                        options: {
                            // オプションでCSS内のurl()メソッドの取り込みを禁止する
                            url: false,
                            // ソースマップの利用有無
                            sourceMap: enabledSourceMap,

                            // 0 => no loaders (default);
                            // 1 => postcss-loader;
                            // 2 => postcss-loader, sass-loader
                            importLoaders: 2
                        },
                    },
                    {
                        loader: 'postcss-loader',
                        options: {
                            // ソースマップの利用有無
                            sourceMap: enabledSourceMap,
                        }
                    },
                    'sass-loader'
                ]
            },
            {
                // 対象となるファイルの拡張子
                test: /\.(gif|png|jpg|eot|wof|woff|woff2|ttf|svg)$/,
                // 画像をBase64として取り込む
                loader: 'url-loader'
            }
        ]
    },

    // メインとなるJavaScriptファイル（エントリーポイント）
    entry: `${__dirname}/src/assets/js/index.js`,

    // ファイルの出力設定
    output: {
        //  出力ファイルのディレクトリ名
        path: `${__dirname}/wp/wp-content/themes/${process.env.NODE_PROJECT}/assets/js`,
        // 出力ファイル名
        filename: 'main.js'
    },
};
