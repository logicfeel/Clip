# handlebars 템플릿 도구

## 방식

- Web
> 컨텐츠를 

- Node

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