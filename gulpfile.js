'use strict';

var swig = require('gulp-swig');
var data = require('gulp-data');

var gulp = require('gulp'),
  path = require('path');

var sass = require('gulp-sass'),
  compass = require('gulp-compass');

var inputDir = './lib',
  outputDir = './build';

// 需要操作的文件
var source = {
  sassDir: path.join(inputDir, 'sass'),
  sassFileDir: path.join(inputDir, 'sass/*.scss'),
  htmlFileDir: path.join(inputDir, 'html/*.tpl')
}

// 输出文件
var output = {
  cssDir: path.join(outputDir, 'static/css'),
  en: path.join(outputDir, 'en-us'),
  cn: path.join(outputDir, 'zh-cn'),
  ko: path.join(outputDir, 'korea'),
  jp: path.join(outputDir, 'jp'),
  tw: path.join(outputDir, 'zh-tw')
}

var getJsonData = function(file) {
  return require('./lib/json/' + file + '.json');
};

gulp.task('zhTmp', function() {
  return gulp.src(source.htmlFileDir)
    .pipe(data(getJsonData('zh-cn')))
    .pipe(swig())
    .pipe(gulp.dest(output.cn));
});

gulp.task('enTmp', function() {
  return gulp.src(source.htmlFileDir)
    .pipe(data(getJsonData('en-us')))
    .pipe(swig())
    .pipe(gulp.dest(output.en));
});

gulp.task('koreaTmp', function() {
  return gulp.src(source.htmlFileDir)
    .pipe(data(getJsonData('korea')))
    .pipe(swig())
    .pipe(gulp.dest(output.ko));
});

gulp.task('jpTmp', function() {
  return gulp.src(source.htmlFileDir)
    .pipe(data(getJsonData('jp')))
    .pipe(swig())
    .pipe(gulp.dest(output.jp));
});

gulp.task('twTmp', function() {
  return gulp.src(source.htmlFileDir)
    .pipe(data(getJsonData('zh-tw')))
    .pipe(swig())
    .pipe(gulp.dest(output.tw));
});
// 编译 compass
gulp.task('compass', function() {
  gulp.src(source.sassFileDir)
    .pipe(compass({
      config_file: './config.rb',
      images: output.imagesDir,
      sass: source.sassDir,
      css: output.cssDir
    }))
    .pipe(gulp.dest(output.cssDir));
});


// watch
gulp.task('compass:watch', function() {
  gulp.watch(source.sassFileDir, ['compass']);
});


gulp.task('zhTmp:watch', function() {
  gulp.watch(source.htmlFileDir, ['zhTmp']);
});

gulp.task('build', [
  'compass',
  'zhTmp',
  'enTmp',
  'koreaTmp',
  'jpTmp',
  'twTmp'
]);

gulp.task('watch', [
  'zhTmp:watch',
  'compass:watch'
]);

gulp.task('default', [
  'build',
  'watch'
]);
