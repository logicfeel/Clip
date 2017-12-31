# Clip > Md_Style

## 헤더  
```
# H1   or  # 제목 #
```  
# H1

```
## H2 or  ## 제목 ##
```  
## H2 ##

```
### H3 or  ### 제목 ###
``` 
### H3

```
#### H4 or  #### 제목 ####
``` 
#### H4

```
##### H5 or  ##### 제목 #####
``` 
##### H5

```
###### H6 or  ####### 제목 #######
``` 
###### H6

## 강조
** 굵게(강조)**

_이텔릭_

~~취소선~~

## 리스트
1. 순서 목록1 (숫자)
2. 순서 목록2 

- 비순서 목록1  "-"
- 비순서 목록2

+ 비순서 목록1 "+"
+ 비순서 목록2

* 비순서 목록1 "*"
* 비순서 목록2

1. 순서 목록1
    + 비순서 1 (텝 + )
    + 비순서 2
        - 비순서 1
        - 비순서 2
            * 비순서 1
            * 비순서 2
2. 순서 목록1
    - 비순서 1 (텝 + )
    - 비순서 2
        1. 순서 1
        2. 순서 2
            + 비순서 1
            + 비순서 2

## 링크
[인라인 스타일 link](https://www.google.com)

[인라인 스타일 + 제목](https://www.google.com "Google's Homepage")

[참조 스타일][Arbitrary case-insensitive reference text]

[참조 스타일][Arbitrary]

[저장소 파일 상대 경로](../blob/master/LICENSE)

[참조 스타일 숫자][1]

빈 채로두고 링크 텍스트 이용  [link text itself].

URL 또는 괄호 <  주소 >. 
http://www.example.com or <http://www.example.com> and sometimes 
example.com (but not on Github, for example).


[arbitrary case-insensitive reference text]: https://www.mozilla.org
[arbitrary]: https://www.mozilla2.org
[1]: http://slashdot.org
[link text itself]: http://www.reddit.com


## 이미지

Inline-style(내부): 
![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "마우스오버 텍스트1")

Reference-style(참조): 
![alt text][logo]

Reference-style(참조): 
![logo]

[logo]: https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "L마우스오버 텍스트2"

github 에 이미지를 올려 놓고 참조 경로를 이용함

## 코드 강조
```javascript
var s = "JavaScript syntax highlighting";
alert(s);
```

```python
s = "Python syntax highlighting"
print s
```
 
```
No language indicated, so no syntax highlighting. 
But let's throw in a <b>tag</b>.
```


## 테이블
| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| 왼쪽정렬          | 중앙정렬      | 오른쪽 정렬 |
| *이텔릭*         | **강조**     |   `배경` |


## 블럭

> 블럭 첫줄
> 블럭 둘째줄

제목

> 긴줄 This is a very long line that will still be quoted properly when 
it wraps. Oh boy let's keep writing to make sure this is long enough to actually wrap for everyone. Oh, you can *put* **Markdown** into a blockquote. 

## 내부 HTML
<dl>
  <dt>정의 목록</dt>
  <dd>내용 </dd>

  <dt>정의 목록</dt>
  <dd>내용<em>tags</em>.</dd>
</dl>

## 수평선
"-" 3개 이상  (얇은)
---
"*" 3개 이상 (두꺼운)
***
"_" 3개 이상 (두꺼운)
___



## 줄바꿈 : 엔터
여기에 우리가 시작할 줄이 있습니다.

이 줄은 위의 줄과 두 줄의 줄 바꿈으로 구분되어 별도의 단락이 됩니다.

이 줄은 또한 별도의 단락을 시작하지만 ... 
이 줄은 하나의 줄 바꿈으로 구분되므로 동일한 단락 의 별도 줄입니다 .
