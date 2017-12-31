# Clip > Md_Style

## 헤더
# H1
## H2
### H3
#### H4
##### H5
###### H6

## 강조
** 굵게(강조)**
_이텔릭_
~~취소선~~

## 리스트
1. 목록1
.. 서브

1. 목록2
... 내용들1
... 내용들2
....... 내용들 3



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

Some text to show that the reference links can follow later.

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
| *이텔릭*         | **강조**     |   '배경' |


## 블럭

> 블럭 첫줄
> 블럭 둘째줄

제목

> 긴줄 This is a very long line that will still be quoted properly when 
it wraps. Oh boy let's keep writing to make sure this is long enough to actually wrap for everyone. Oh, you can *put* **Markdown** into a blockquote. 

## 내부 HTML
<dl>
  <dt>Definition list</dt>
  <dd>Is something people use sometimes.</dd>

  <dt>Markdown in HTML</dt>
  <dd>Does *not* work **very** well. Use HTML <em>tags</em>.</dd>
</dl>

## 수평선
---
or
***
or
___

## 줄바꿈
엔터
