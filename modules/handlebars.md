# handlebars 템플릿 도구
> https://cloudfour.com/thinks/the-hidden-power-of-handlebars-partials/


## 표현식

- {{ 객체명 }} : 객체 바인딩

- {{ 핼퍼_함수식별자 [전달객체,..] }} : 함수 호출
    ```javascript
    Handlebars.registerHelper('fullName', function(person) { // 파라메터 사용자 지정 사용
    return person.firstName + " " + person.lastName;
    });
    ```
    > 사용 : {{fullName author}}

- {{# 헬퍼_함수식별자 }}   : 함수 호출(내부 파싱)

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
    ```
    > 사용 : {{fullName author}}

    + 미리 정의된 함수 : #if, #uless, #each, #with  {{else}}  * 공통

- {{> 부분명 }} : 부분 템풀릿 삽입, 
    + `OOP의 new 개념`

- {{#> 부분명 }} : 부분 템플릿 삽입 + 템플릿 내의 부분명 재정의, 
    + `OOP의 상속 재사용 개념`

- {{#* inline }} : 페이지 내부 정의 | 기존명 오버라이딩, 
    + `OOP의 인라인 클래스 | 오버라이딩 메소드 개념`

- {{* 데코레이션명 }} : 세부 메소드 설정 (program, props, container, context)
    + `OOP의 다형성 및 다양한 세부 설정`

## {{ }}  : 표현식
> 기본표현식, 객체값 또는 함수의 return 값을 삽입
    - {{ 객체 }} 
    - {{ 핼퍼함수 [전달객체,..] }} 

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
    - 핼퍼 함수
    - 부분
    - 데코레이션


------------------------------------

## 표현식
- {{ }}  | {{{ }}} : 객체 표현


    - 블럭 표현식 : `#`
        
        + 헬퍼 함수 호출

            * {{ `#list` *Array객체* }} : 시작 

            * {{ `/list` }} : 종료

            > `#list`는 핼퍼 등록명

```javascript
Handlebars.registerHelper('list', function(items, options) {
    var out = "<ul>";

    for(var i=0, l=items.length; i<l; i++) {
        out = out + "<li>" + options.fn(items[i]) + "</li>";
    }
return out + "</ul>";
});
```
        

    
        + 조건

            * {{ `#if` *Boolean객체* }} : 시작 
            
            * {{ `/if` }} : 종료

        + 거짓 (Not)

            * {{ `#unless` *Array객체* }} : 시작

            * {{ `/unless` }} : 종료

        + 반복

            * {{ `#each` *Array객체* }} : 시작

            * {{ `/each` }} : 종료

- 경로
    - ../name
    - ./name
    - this/name

- 주석 

    - {{!-- --}} or {{! }}

- 핼퍼는 모두 사용가능함

{{ 헬퍼 }}

function(변수) {}  : 변수 대신 this 를 통해 받을 수 있음


- 부분 (Partials)
> `{{> userMessage tagName="h2" }}`
> 필요부분은 전달 가능함  : tagName="h2"

```javascript
Handlebars.registerPartial('userMessage',
    '<{{tagName}}>By {{author.firstName}} {{author.lastName}}</{{tagName}}>'
    + '<div class="body">{{body}}</div>');
var context = {
  author: {firstName: "Alan", lastName: "Johnson"},
  body: "I Love Handlebars",
  comments: [{
    author: {firstName: "Yehuda", lastName: "Katz"},
    body: "Me too!"
  }]
};
```
```html
<div class="post">
  {{> userMessage tagName="h1" }}
  <h1>Comments</h1>
  {{#each comments}}
    {{> userMessage tagName="h2" }}
  {{/each}}
</div>
```

    - 기본
    - 동적 
    - 컨텍스트 : 컨텍스트 지정
    - 파라메터 : 컨텍스트 일부 전달
    - 블럭 : 오류처리에 이용 ?
    - 인라인 
        + {{#*inline "nav"}}  ~  {{/inline}}