
# JavaScript 객체지향


### Brower(클라이언트) vs Node(서버)

- 상속
  
- 클래스
    - 추상
    - 인터페이스
    - 일반
  
- 메소드
    - 정적
    - 동적

- 속성
    - 정적
    - 동적

- 스코프(메소드, 속성)
  - 공개(public)
  - 내부(private)

- getter/setter

## 상속 : Node (Server Side)
```javascript

'use strict';

var util = require('util');

function 대상클래스(전달변수) {
    부모클래스.call(this, 전달변수);
    
}
util.inherits(대상클래스, 부모클래스);

대상클래스.prototype.메소드 = function() {
};

대상클래스.정적_메소드 = function() {
};

```  

# 메소드
```javascript
var t = require('Mod');
  
```