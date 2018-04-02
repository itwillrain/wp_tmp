require('dotenv').config();
var gulp = require( 'gulp' );
var watch = require( 'gulp-watch' );


gulp.task( 'copy', function() {
    return gulp.src(
        [ './src/**/*.php', './src/style.css' ],
        { base: 'src' }
    )
        .pipe( gulp.dest( `${__dirname}/wp/wp-content/themes/${process.env.NODE_PROJECT}`) );
} );

gulp.task('watch', function () {
    watch('./src/**', function () {
        gulp.start(['copy']);
    });
});
