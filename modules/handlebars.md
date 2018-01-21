# handlebars 템플릿 도구
> https://cloudfour.com/thinks/the-hidden-power-of-handlebars-partials/  : 조각 샘플
> https://www.sitepoint.com/using-inline-partials-and-decorators-with-handlebars-4-0/ : 인라인 조각 및 데코레이션 활용


## 표현식

- {{ 객체명 }} : 객체 바인딩

- {{ 핼퍼_함수명  }} : 핼퍼함수 호출

- {{# 헬퍼_함수식별자 }}   : 함수 호출(내부 파싱)

- {{> 부분명 }} : 부분 템풀릿 삽입, 
    + `OOP의 new 개념`

- {{#> 부분명 }} : 부분 템플릿 삽입 + 템플릿 내의 부분명 재정의, 
    + `OOP의 상속 재사용 개념`

- {{#* inline }} : 페이지 내부 정의 | 기존명 오버라이딩, 
    + `OOP의 인라인 클래스 | 오버라이딩 메소드 개념`

- {{* 데코레이션명 }} : 세부 메소드 설정 (program, props, container, context)
    + `OOP의 다형성 및 다양한 세부 설정`

| 구분           | 입력/정의       | 출력/호출    | 비고 |
|:-------------:|:--------------| :---------|------:|
| **`객체`**     | {*Data*}        | {{ `객체명` }} |
| **`핼퍼(메소드)`** | registerHelper('헬퍼명', function([, args...]) | {{ `헬퍼명` [args...]) }} | |
| **`블럭표현식`**   | registerHelper('블럭명', function([items, ]options)) | {{# `블럭명` [args...] }} 기본내용 {{/`블럭명`}} | |
| **`조각(부분)`**  | registerPartial('조각명', ' `조각내용 or File` ' ) | {{> `조각명` [`전달객체, 파라메터` ] }}   | |
|                 | {{#*inline }} `조각내용(인라인)` {{/inline}} | {{#> `조각명` [`전달객체, 파라메터` ] }} `조각재정의` {{/`조각명`}} | 오버라이딩에 활용 |
| **`데코레이션`**   | registerDecorator('foo', function((prgm, props, contr, ctxt)))  | [ *내용뒤* ] {{*`데코레이션명`}} | 해퍼선택 및 재정의 |

## {{ }}  : 표현식
> 기본표현식, 객체값 또는 함수의 return 값을 삽입

    - {{ 객체 }} 
    - {{ 핼퍼함수 [전달객체,..] }} 

```javascript
Handlebars.registerHelper('fullName', function(person) { // 파라메터 사용자 지정 사용
return person.firstName + " " + person.lastName;
});
```


## {{#*inline }}  : 인라인 부분 정의
    - {{#*inline "myPartial"}} 내부 부분 정의 {{/inline}}

## {{# }}  : 블럭문
    - 기본 제공 블럭문  
        + {{#if 부울값 }} ...[ {{else}} ]...{{/if}}
        + {{#unless 부울값 }} ...[ {{else}} ]...{{/unless}}
        + {{#each 배열값 }} ...[ {{else}} ]...{{/each}}
        + {{#with  }} ...[ {{else}} ]...{{/with}} ?? 

    - 사용자 정의 블럭문 : 등록된 헬퍼함수
        + {{#custmer [전달객체,..] }} ... {{/custmer}}

```javascript
Handlebars.registerHelper('noop', function(options) {
return options.fn(this);  // 내부 파싱 처리
});

Handlebars.registerHelper('bold', function(options) {
return new Handlebars.SafeString(
    '<div class="mybold">'
    + options.fn(this)
    + '</div>');
});

// #if
Handlebars.registerHelper('if', function(conditional, options) {
if(conditional) {
    return options.fn(this);
}
});

Handlebars.registerHelper('list', function(items, options) {
    var out = "<ul>";

    for(var i=0, l=items.length; i<l; i++) {
        out = out + "<li>" + options.fn(items[i]) + "</li>";
    }
return out + "</ul>";
});
```
    
## {{> }}  : 삽입문(부분에 선언된)
> 부분으로 등록된 (부분 | 인라인) 내용 삽입 
    - {{> myPartial [ parameter=value ] }} : 파라메터

    - {{> myPartial myOtherContext }} : 컨텍스트

    - {{> (whichPartial) }} : 동적 

    - {{> (lookup . 'myVariable') }} : 동적

    - {{#> myPartial }} 없을시 기본값 {{/myPartial}} : 블럭형 일부

## {{#> }}  : 재정의 블럭문

## {{* }}  : 데코레이션

## 등록 
    - 핼퍼(함수) 등록
    - 조각 등록
    - 데코레이션 등록
