# 정규표현식

> 참조 사이트 : https://regexr.com/


## 조건
  - AND
    + `ABC` : 매칭
    + ` . ` : 한문자 매칭
  - OR
    + `(ABC|DEF)` : 문자열의 OR 연산 
    + `[ABC]` : 문자 OR 조건
  - NOT
    + `[^ABC]` : 문자 아닌
  - 범위
    + `[A-Z]` : A에서 Z까지 문자
      > 예제> [1-5] : 1에서 5까지 문자
    
## 수량
  - `+` : 1개 이상
  - `*` : 0개 이상
  - `{n, m}` : n개 이상 m개 이하
  - `?` : 0 또는 1개

## 위치
  - `^ABC` : 입력 시작
  - `ABC$` : 입력 종료
  - `\b` : 단어 경계
    ```
    s\b
    ``` 
    > *결과* : she sell`s` seashell`s`

  - `\B` : 비 단어 경계
    ```
    s\B
    ``` 
    > *결과* : `s`he `s`ells `s`ea`s`hells

## 문자 클래스
  - 숫자
    + `\d` : 숫자 `[0-9]`
    + `\D` : 숫자 제외 문자 `[^0-9] `
  
  - 문자
    + `\w` : 영문(대/소) + 숫자 + _ `[a-zA-Z0-9_]`
    + `\W` : 영문(대/소) + 숫자 + _ 제외 문자 `[^a-zA-Z0-9_]`

  - 공백
    + `\s` : 공백 문자  `[ \t\n\r]`
    + `\S` : 공백 제외 문자 `[^ \t\n\r]`  *space 들어 있음*

## 특수문자
  - 공백문자
    + `\t` : 탭
    + `\n` : 개행 (줄바꿈)
    + `\r` : 캐리지 리턴 (엔터)
    + `\f` : 폼 피드 (페이지 넘김)
    + `\v` : 수평탭

  - 제어 및 특수문자
    + `\` : 특수문자   `\\`, `\[`  `\{`  
    + `\72` : 8진수
    + `\xA9` : 16진수
    + `\u00A9` : 유니코드
    + `\u{00A9}` : 확장 유니코드
    + `\c` : 제어문자
    + `\a` : 벨소리
    + `\0` : NULL

## 그룹
  - 캡쳐
    + `(ABC)` : 그룹 (캡쳐)
      ```
      (ha)+
      ``` 
      > *결과* : `hahaha` `ha`a `ha`h!
    + `\1` : 역참조 (캡쳐 번호)

  - 비캡쳐
    + `(?:ABC)` : 매칭은 값에 포함, 비캡쳐
    + `(?=ABC)` : 이후 있어야함 
      ```
      \d(?=px)
      ``` 
      > *결과* : 1pt `2`px 3em `4`px

    + `(?!ABC)` : 이후에 없어야함
      ```
      \d(?!px)
      ``` 
      > *결과* : `1`pt 2px `3`em 4px

## 교체
  - `$&` : 매칭
  - $` : 매칭 이전 문자열
  - `$'` : 매칭 이후 문자열
  - `$1` : 캡쳐 번호

## 예약어

## 플래그
  - `g` : 전체 검색
  - `i` : 대/소문자 무시
  - `m` : 여러줄 검색
  - `y` : 현재 위치부터 검색

