require('dotenv').config();
module.exports = {
    //productionにするとuglifyされる
    mode: 'development',

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
