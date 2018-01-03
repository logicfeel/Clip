gulp-replace
------------------------------------------------------------
내용 교체

> **문법**
> replace(`string` | `regex`, `replacement`[, `options`])
- `string` : 변경할 문자열
- `regex` : 검색할 정규패턴
- `replacement` : `String` 또는 `Function`
- `options` : 옵션
    + {skipBinary: true} : 바이너리 파일 건너뛰기

### 예제 `단순 교체`

```javascript
gulp.task('templates', function(){
  gulp.src(['file.txt'])
    .pipe(replace('bar', 'foo'))
    .pipe(gulp.dest('build/'));
});
```

### 예제 `정규표현식 교체`

> 참조 사이트 http://regexr.com

```javascript
gulp.task('templates', function(){
  gulp.src(['file.txt'])
    // See http://mdn.io/string.replace#Specifying_a_string_as_a_parameter 
    .pipe(replace(/foo(.{3})/g, '$1foo'))
    .pipe(gulp.dest('build/'));
});
```

### 예제 `콜백 교체`

```javascript
gulp.task('templates', function(){
  gulp.src(['file.txt'])
    .pipe(replace('foo', function(match) {
      // Replaces instances of "foo" with "oof" 
      return match.reverse();
    }))
    .pipe(gulp.dest('build/'));
});
```

### 예제 `콜백 + 정규표현식 교체`

```javascript
gulp.task('templates', function(){
  gulp.src(['file.txt'])
    .pipe(replace(/foo(.{3})/g, function(match, p1, offset, string) {
      // Replace foobaz with barbaz and log a ton of information 
      // See http://mdn.io/string.replace#Specifying_a_function_as_a_parameter 
      console.log('Found ' + match + ' with param ' + p1 + ' at ' + offset + ' inside of ' + string);
      return 'bar' + p1;
    }))
    .pipe(gulp.dest('build/'));
});
```