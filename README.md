# Clip > Md_Style

헤더
-----------------------------------  

```
# H1      or  # 제목 #      or 타이틀 다음줄 ===  (*화면 맞출 때)
## H2     or  ## 제목 ##    or 타이틀 다음줄 ---  (*화면 맞출 때)
### H3    or  ### 제목 ###
#### H4   or  #### 제목 ####
##### H5  or  ##### 제목 #####
###### H6 or  ###### 제목 ######
```  
# H1 (헤더1)
## H2 (해더2)
### H3 (헤더3)
#### H4 (헤더4)
##### H5 (헤더5)
###### H6 (헤더6)

강조
-----------------------------------

```
** 굵게(강조)**
```
**굵게(강조)**

```
_이텔릭(언더바)_
```
_이텔릭(언더바)_

```
~~취소선~~
```
~~취소선~~

리스트 : 텝 기준으로 정렬됨
-----------------------------------

> tab 은 깊이
> 숫자 : 순서 목록
> +, -, * : 비순서 목록  (차이점은 없음, 보기 좋은것으로 알아서 사용)

1. 순서 목록1 (숫자)
2. 순서 목록2 
- 비순서 목록1 (-)
- 비순서 목록2 (-)
    + 비순서 목록1 (+)
    + 비순서 목록2 (+)
- 비순서 목록1  (-)
- 비순서 목록2 (-)
    - 비순서 목록1 (-)
    - 비순서 목록2 (-)
    * 비순서 목록1 (*)
    * 비순서 목록2 (*)
1. 순서 목록1
2. 순서 목록2
    - 비순서 1 (-)
    - 비순서 2
        1. 순서 1
        2. 순서 2
            + 비순서 1
            + 비순서 2

블럭
-----------------------------------
줄별 지정
> 블럭 첫줄
> 블럭 둘째줄

긴줄 지정
> 긴줄 This is a very long line that will still be quoted properly when 
it wraps. Oh boy let's keep writing to make sure this is long enough 
to actually wrap for everyone. Oh, you can *put* **굵게** into a blockquote. 

> 내부
> > 내부1
>> 내부2
> 내부

테이블
-----------------------------------

| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| 왼쪽정렬          | 중앙정렬      | 오른쪽 정렬 |
| *이텔릭*         | **강조**     |   `배경` |

> 테이블 내부
> ```
> *이텔릭*   
> **강조** 
> `배경`
> ```

코드 강조
-----------------------------------

```
` 3개 + 언어명 : 언어 코드 강조 됨 
` 3개 : 주석 처리됨
```

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


내부 HTML
-----------------------------------

```
<dl>
  <dt>정의 목록</dt>
  <dd>내용 </dd>

  <dt>정의 목록</dt>
  <dd>내용<em>tags</em>.</dd>
</dl>
<dl>
  <dt>정의 목록</dt>
  <dd>내용 </dd>

  <dt>정의 목록</dt>
  <dd>내용<em>tags</em>.</dd>
</dl>
```
<dl>
  <dt>정의 목록</dt>
  <dd>내용 </dd>

  <dt>정의 목록</dt>
  <dd>내용<em>tags</em>.</dd>
</dl>
<dl>
  <dt>정의 목록</dt>
  <dd>내용 </dd>

  <dt>정의 목록</dt>
  <dd>내용<em>tags</em>.</dd>
</dl>

수평선
-----------------------------------
```
***  또는 ___   : 3개 이상
```
***
___



줄바꿈 : 엔터
-----------------------------------

여기에 우리가 시작할 줄이 있습니다.

이 줄은 위의 줄과 두 줄의 줄 바꿈으로 구분되어 별도의 단락이 됩니다.

이 줄은 또한 별도의 단락을 시작하지만 ... 
이 줄은 하나의 줄 바꿈으로 구분되므로 동일한 단락 의 별도 줄입니다 .

링크
-----------------------------------
```
[1. 인라인 스타일 link](https://www.google.com)
[2. 인라인 스타일 + 제목](https://www.google.com "Google's Homepage")
[3. 참조 스타일][Arbitrary case-insensitive reference text]
[4. 참조 스타일][Arbitrary]
[5. 저장소 파일 상대 경로 1 : 다른 브런치](../blob/master/LICENSE)
[6. 저장소 파일 상대 경로 2 : 자신브런치](README.md)
[7. 참조 스타일 숫자][1]
8. 빈 채로두고 링크 텍스트 이용  [link text itself].
9. URL : http://www.example.com 
10. <URL> :  <http://www.example.com> 

[arbitrary case-insensitive reference text]: https://www.mozilla.org
[arbitrary: https://www.mozilla2.org
[1]: http://slashdot.org
[link text itself]: http://www.reddit.com
```

[1. 인라인 스타일 link](https://www.google.com)
[2. 인라인 스타일 + 제목](https://www.google.com "Google's Homepage")
[3. 참조 스타일][Arbitrary case-insensitive reference text]
[4. 참조 스타일][Arbitrary]
[5. 저장소 파일 상대 경로 1 : 다른 브런치](../blob/master/LICENSE)
[6. 저장소 파일 상대 경로 2 : 자신브런치](README.md)
[7. 참조 스타일 숫자][1]
8. 빈 채로두고 링크 텍스트 이용  [link text itself].
9. URL : http://www.example.com 
10. <URL> :  <http://www.example.com> 

[arbitrary case-insensitive reference text]: https://www.mozilla.org
[arbitrary: https://www.mozilla2.org
[1]: http://slashdot.org
[link text itself]: http://www.reddit.com

이미지
-----------------------------------
```
![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "마우스오버 텍스트1")
```
직접 경로지정(내부): 
![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "마우스오버 텍스트1")

참조 이미지(참조): 
![alt text][logo]

참조 이미지(참조): 
![logo]

Reference-style(참조): 
[logo]

[logo]: https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "L마우스오버 텍스트2"

*github 에 이미지를 올려 놓고 참조 경로를 이용함
