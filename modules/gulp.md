# gulp 자동화 도구


## 주요 메소드

gulp.src    : 대상 파일 선택 (glob)

gulp.task   : 자동화 실행 

gulp.dest : 작업 저장


```javascript
gulp.src('client/templates/*.pug')              // 해당폴더에 .pug 확장자의 모든 파일들
  .pipe(pug())                                  // 템플릿 ?
  .pipe(minify())                               // 최소화
  .pipe(gulp.dest('build/minified_templates')); // 폴더에 저장
```