# gulp 자동화 도구

> npm 설치
```shell
npm install gulp -g             // 전역설치
npm install gulp --save-dev     // 개발용으로 만 설치 (*배포시 제외됨)
npm install gulp --save         // 종속성 지정?
```

- gulpFile.js : 기본 실행 파일명
- https://gulpjs.org/  : API 설명서

## 주요 API

- gulp.src    : 대상 파일 선택 (glob)   *glob 세부 정의 가능함
> gulp.src(globs[, options])
gulp.src(`folder`).pipe(`dist`)   : 파이프 (연결)

- gulp.dest : 디렉토리에 파일 쓰기
> gulp.dest(path[, options])

- gulp.task   : 작업 정의 (실행 단위)
> gulp.task([name,] fn)

- gulp.watch : 변경시 작업 실행
> gulp.watch(globs[, opts][, fn])



## 기타 API
- gulp.symlink  	: 심볼릭 파일 쓰기
- gulp.lastRun  	: 마지막 성공한 스템프 가져오기
- gulp.parallel 	: 병렬 작업 처리
- gulp.series		: 순차 작업 처리
- gulp.tree			: 작업트리 가져옴
- gulp.registy  	: 작업레지스틀 설정



## 주요 플러그인
    - gulp-concat()			: 파일 합치기

    - gulp-uglify()			: 코드 암호화

    - gulp-minify()			: 파일 최소화

    - gulp-sass()			: SASS CSS 컴파일

    - gulp-rename()			: 파일명 변경
		+ 사용법 : 완료

    - gulp-repalce()		: 교체

    - gulp-sourcemaps()		: 파일 지도 (구조) 파일 만들기
		+ 사용법 : TODO

	- lazypipe()			: gulp의 파이프 연결

	- gulp-sync() 			: 동기화 

	- lazypipe()			: pipe 연결 (함수)

	- gulp-json-sort()		: json 파일 정렬

	- gulp-if()				: 분리 처리
		+ https://www.npmjs.com/package/gulp-if

	- gulp-group-concat()	: 그룹별 파일 합침		
		+ https://www.npmjs.com/package/gulp-group-concat
		+ 주의! : gulp.dest 이전에 사용해야함

## 파악전 플러그인 TODO:
	- Pleeease			: CSS 관련 처리

## 참조 사이트
	- https://regexr.com/ : 정규표현식 테스트

gulp.src
------------------------------------------------------------
하나 이상의 glob 일치 파일 가져옴

> **문법**
> gulp.src(globs[, options])

    + glob 세부 정의 가능함

### 예제
```javascript
// 폴더 뒤에 .pub 파일들
gulp.src('client/templates/*.pug')  

// b 로 시작하는 모든 파일 제외 (*지정파일 bad.js 는 포함됨)
gulp.src(['*.js', '!b*.js', 'bad.js'])
```

gulp.dest
------------------------------------------------------------
디렉토리에 파일 쓰기

> **문법**
> gulp.dest(`path`[, `options`])
- `path` : `String` | `Function`  (*함수기능을 확인 필요)

    + glob 세부 정의 가능함


gulp.task
------------------------------------------------------------
작업 정의 (실행 단위)

> **문법**
gulp.task(name [, `deps`, `fn`])
- `name` : 작업 정의명 (호출하는데 이용)
    + 'default' 는 기본 실행 task
- `deps` : `Array` fn 함수 실행전 task 작업 목록
- `fn` : 함수명 지정
- `fn.description` : 실행시 함수명

    + 파이프를 저장함

### 예제1
```javascript
function test(done){
  done();
}
test.description = '작업명임';
gulp.task(test); 
```

```shell
$> gulp --tasks
[12:00:02] Tasks for ~/Documents/some-project/gulpfile.js
[12:00:02] └── 작업명임

$> gulp <task-name>
```

### 예제2
```javascript
gulp.task('somename', function() {
  return gulp.src('client/**/*.js')
    .pipe(minify())
    .pipe(gulp.dest('build'));
}); 
```

샘플
------------------------------------------------------------

### 예제 `기본 실행`

```javascript
var gulp = require('gulp');             
var concat = require('gulp-concat');    // gulp 플러그인 

gulp.task('combine-js', ['lint-js'], function () {
	return gulp.src('src/**/*.js')      // src 폴더 하위으 모든 .js 파일
	.pipe(concat('all.js'))             // 합칠 파일명 (플러그인)
	.pipe(gulp.dest('dist/js'));        // 쓰기 폴더
});

gulp.task('default', ['combine-js']);
```

### 예제 `복합 task + watch`

```javascript
// 웹서버를 localhost:8000 로 실행한다.
gulp.task('server', function () {
	return gulp.src(dist + '/')
		.pipe(webserver());
});

// 자바스크립트 파일을 하나로 합치고 압축한다.
gulp.task('combine-js', function () {
	return gulp.src(paths.js)
		.pipe(concat('script.js'))
		.pipe(uglify())
		.pipe(gulp.dest(dist + '/js'));
});

// sass 파일을 css 로 컴파일한다.
gulp.task('compile-sass', function () {
	return gulp.src(paths.scss)
		.pipe(sass())
		.pipe(gulp.dest(dist + '/css'));
});

// HTML 파일을 압축한다.
gulp.task('compress-html', function () {
	return gulp.src(paths.html)
		.pipe(minifyhtml())
		.pipe(gulp.dest(dist + '/'));
});

// 파일 변경 감지 및 브라우저 재시작
gulp.task('watch', function () {
	livereload.listen();
	gulp.watch(paths.js, ['combine-js']);
	gulp.watch(paths.scss, ['compile-sass']);
	gulp.watch(paths.html, ['compress-html']);
	gulp.watch(dist + '/**').on('change', livereload.changed);
});

//기본 task 설정
gulp.task('default', [
	'server', 'combine-js', 
	'compile-sass', 'compress-html', 
	'watch' ]);
```