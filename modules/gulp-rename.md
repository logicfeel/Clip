gulp-rename
------------------------------------------------------------
이름 변경

> **문법**
> gulp-rename(name)
- name : 이름 지정
    + src의 상대 경로임

> gulp-rename(fn)

> gulp-rename(object)

### 예제 `단순 변경`

```javascript
// rename via string
gulp.src("./src/main/text/hello.txt")
  .pipe(rename("main/text/ciao/goodbye.md"))
  .pipe(gulp.dest("./dist")); // ./dist/main/text/ciao/goodbye.md
```

### 예제 `세부 변경`

```javascript
// rename via function
gulp.src("./src/**/hello.txt")
  .pipe(rename(function (path) {
    path.dirname += "/ciao";        // 폴더 변경
    path.basename += "-goodbye";    // 파일명 변경
    path.extname = ".md";           // 확장자 변경 (* 점을 포함)
  }))
  .pipe(gulp.dest("./dist")); // ./dist/main/text/ciao/hello-goodbye.md
```

### 예제 `세부 변경(옵션)`

```javascript
// rename via hash
gulp.src("./src/main/text/hello.txt", { base: process.cwd() })
  .pipe(rename({
    dirname: "main/text/ciao",
    basename: "aloha",
    prefix: "bonjour-",     // 접두사
    suffix: "-hola",        // 접미사
    extname: ".md"          // 확장자
  }))
  .pipe(gulp.dest("./dist")); // ./dist/main/text/ciao/bonjour-aloha-hola.md
```