const {series, watch, src, dest, parallel} = require('gulp');
const pump = require('pump');

// gulp plugins and utils
const livereload = require('gulp-livereload');
const postcss = require('gulp-postcss');
const zip = require('gulp-zip');
const concat = require('gulp-concat');
const uglify = require('gulp-uglify');
const beeper = require('beeper');

// postcss plugins
const autoprefixer = require('autoprefixer');
const colorFunction = require('postcss-color-mod-function');
const cssnano = require('cssnano');
const easyimport = require('postcss-easy-import');

function serve(done) {
    livereload.listen();
    done();
}

const handleError = (done) => {
    return function (err) {
        if (err) {
            beeper();
        }
        return done(err);
    };
};

function html(done) {
    pump([
        src(['templates/*.html', 'templates/partials/**/*.html']),
        livereload()
    ], handleError(done));
}

function css(done) {
    pump([
        src('templates/assets/css/*.css', {sourcemaps: true}),
        postcss([
            easyimport,
            colorFunction(),
            autoprefixer(),
            cssnano()
        ]),
        dest('templates/assets/built/', {sourcemaps: '.'}),
        livereload()
    ], handleError(done));
}

function js(done) {
    pump([
        src([
            // pull in lib files first so our own code can depend on it
            'templates/assets/js/lib/*.js',
            'templates/assets/js/*.js'
        ], {sourcemaps: true}),
        concat('casper.js'),
        uglify(),
        dest('templates/assets/built/', {sourcemaps: '.'}),
        livereload()
    ], handleError(done));
}

function zipper(done) {
    const filename = require('./package.json').name + '-' + require('./package.json').version + '.zip';

    pump([
        src([
            '**',
            '!node_modules', '!node_modules/**',
            '!dist', '!dist/**',
            '!yarn-error.log',
            '!yarn.lock',
            '!gulpfile.js'
        ]),
        zip(filename),
        dest('dist/')
    ], handleError(done));
}

const cssWatcher = () => watch('templates/assets/css/**', css);
const jsWatcher = () => watch('templates/assets/js/**', js);
const htmlWatcher = () => watch(['templates/*.html', 'templates/partials/**/*.html'], html);
const watcher = parallel(cssWatcher, jsWatcher, htmlWatcher);
const build = series(css, js);

exports.build = build;
exports.zip = series(build, zipper);
exports.default = series(build, serve, watcher);
