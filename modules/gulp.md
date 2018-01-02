# gulp 자동화 도구


## 주요 API

- gulp.src    : 대상 파일 선택 (glob)   *glob 세부 정의 가능함
> gulp.src(globs[, options])

- gulp.dest : 디렉토리에 파일 쓰기
> gulp.dest(path[, options])

- gulp.task   : 작업 정의 (실행 단위)
> gulp.task([name,] fn)

- gulp.watch : 변경시 작업 실행
> gulp.watch(globs[, opts][, fn])

## 기타 API

- gulp.symlink
- gulp.lastRun
- gulp.parallel : 병렬 작업 처리
- gulp.series   : 순차 작업 처리
- gulp.tree     : 작업트리 가져옴
- gulp.registy  : 작업레지스틀 설정


## gulp.src : 하나 이상의 glob 일치 파일 가져옴

> gulp.src(globs[, options])

```javascript
gulp.src('client/templates/*.pug')              // 해당폴더에 .pug 확장자의 모든 파일들
  .pipe(pug())                                  // 템플릿 ?
  .pipe(minify())                               // 최소화
  .pipe(gulp.dest('build/minified_templates')); // 폴더에 저장
```