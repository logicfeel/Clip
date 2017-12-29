# VB 기본 제공 함수
    - 문자열 : 
    - 배열 : 
    - 변환 : 
    - 날짜 :
    - 수학 :
    - 포맷 : 
    - 기타 :

## 문자열 
    검색
    - InStr : 위치 검색
    - InStrRev : 위치 검색 (뒤에서)
    - Len : 길이

    변형
    - Mid : 추출
    - Left : 문자 자름 (왼쪽)
    - Right : 문자 자름 (오른쪽)
    - LTrim : 왼쪽 공백 제거
    - RTrim : 오른쪽 공백 제거
    - Replace : 문자열 교체 
    - Ucase : 대문자 변환
    - LCase : 소문자 변환
    - StrReverse : 문자열 순서 뒤집음

    생성
    - Space : 공백 생성
    - String : 반복 문자열 생성
    
    검사
    - StrComp : 비교

## 배열
    - Array     : 배열 생성
    - Filter    : 배열 필터

    - Join      : 배열 합침 (구분자)
    - Split     : 문자열 배열 생성 (구분자)

    - LBound    : 최소 배열 차수
    - UBound    : 최대 벼열 차수

    - IsArray   : 배열 검사

## 변환
    - Asc : 문자의 ansi 코드값
    - CBool : Boolean 타입으로 변환
    - CByte : 바이트 변환 (0 ~ 255 사이)
    - CCur : 통화로 변환 (소수점 4반올림)
    - CDate : 문자열을 Date 변환
    - CDbl : Double 형 변환
    - Chr : 아스키 코드를 문자로 변환
    - CInt : Integer 정수형 변환( 32767)
    - CLng : Long 정수형 변환 (2147483647)
    - CSng : Single 변환
    - CStr : String 변환
    - Hex : 숫자를 16진수로 변환
    - Oct : 숫자를 8진수로 변환

## 날짜/시간
    - CDate : 날짜 변환 (문자열)

    현재 날짜
    - Now   : 현재 날짜
    - Date  : 현재 날짜
    - Time  : 현재 시간 반환    
    - DateSerial : 날짜 변환 (년/월/일)

    날짜 계산
    - DateAdd   : 날짜 계산 (추가)
    - DateDiff  : 날짜 간격
    
    - Timer : 오전 12시 이후 초
    - TimeSerial : 특정 시간, 분, 초 반환

    - IsDate    : 문자열의 날짜형으로 여부

    날짜 추출 (정수)
    - DatePart  : 날짜 (지정부분)
    - Year      : 연도
    - Month     : 월 (1 ~ 12)
    - Weekday   : 요일 (1일 ~ 7토)
    - Day       : 날짜 (1 ~ 31)
    - Hour      : 시간 (0 ~ 23)
    - Minute    : 분 (0 ~ 59)
    - Second    : 초 (0 ~ 59)

    날짜 추출 (문자열)
    - DateValue : 연도/월/날짜 
    - MonthName : 월 이름
    - WeekdayName : 요일 이름
    - TimeValue : 시간값 문자열
    - FormateDateTime : 날짜 양식 얻기 ()

## 수학
    - Abs
    - Atn
    - Cos
    - Exp
    - Hex
    - Int
    - Fix
    - Log
    - Oct
    - Rnd
    - Sgn
    - Sin
    - Sqr
    - Tan

## 포맷
    - FormatCurrency : 통화 기호로 변환 (자리수) *제어판
    - FormatDateTime : 날짜 시간 형식
    - FormateNumber : 수 형식 (소수점)
    - FormatPercent : 퍼센트 형식

## 기타 함수
    - CreateOjbect : 객체 생성
    - Eval : 함수식 계산  *해킹, 해석
    - IsEmpty : 초기화 검사
    - IsNull : Null 검사
    - IsNumeric : 숫자 검사
    - IsObject : 객체 검사
    - RGB : 색상값 (255,255,255)
    - Round : 숫자의 반올림 (자리수)
    - ScriptEngine : 스크립트 엔진 
    - ScriptEngineBuildVersion : 빌드 버전
    - ScriptEngineMajorVersion : 주 버전
    - ScriptEngineMinorVersion : 부 버전
    - TypeName : 타입명
      (Byte, Integer, Long, Single, Double, Curreny, Decimal, Date, String, 
      Boolean, Empty, Null, <object type>, Object, Unknown, Nothing, Error)
    - VarType : 타입 값
      (0:Empty, 1:Null, 2:Interger, 3:Long, 4:Single, 5:Double, 6:Currency, 
      7:Date, 8:String, 9:Object, 10:Error, 11:Boolean, 12:Veriant*변형-배열, 
      13:DataObject*데이터엑세스, 17:Byte, 8192:배열 )  

# ASP 객체
    - 요청
    - 응답
    - 서버
    - 세션
    - 어플리케이션
    - 에러

## Request

    컬렉션(수집)
    - ClientCerificate
    - Cookies   : 쿠키 설정/얻기
    - Form      : POST 값 검색
    - QueryString   : GET 값
    - ServerVariables : 요청 정보

    프로퍼티(특성)
    - TotlaBytes : 요청 byte 수

    메소드(방법)
    - BinaryRead : POST 요청의 배열에 저장

## Response

    컬렉션(수집)
    - Cookies   : 쿠키 설정/얻기

    프로퍼티(특성)
    - Buffer    : 출력의 버퍼링 여부
    - CacheControl  : 출력의 캐시 여부
    - Charset : 문자집합 헤더에 추가
    - ContentType   : 컨텐츠 타입 설정
    - Expires   : 캐시 만료 분 설정
    - ExpiresAbsolute   : 만료 날짜/시간 설정
    - IsClientConnected : 서버와의 연결 여부
    - Pics  : PICS 레이블 헤더에 추가 (등급)
    - Status : 서버의 리턴 상태 정보

    메소드
    - AddHeader
    - AppendToLog
    - BinaryWrite
    - Clear
    - End
    - Flush
    - Redirect
    - Write

## Server

    프로퍼티
    - ScriptTimeout

    메소드
    - CreateObject
    - excute
    - GetlastError()
    - HTMLEncode
    - MapPath
    - Transfer
    - URLEncode

## Session

    컬렉션
    - Contents
    - StaticObjects

    프로퍼티
    - CodePage
    - LCID
    - SessionID
    - Timeout

    메소드
    - Abandon
    - Contents.Remove
    - Contents.REmoveAll()

    이벤트
    - Session_OnEnd
    - Session_OnStart

## Application

    컬렉션(수집)
    - Contents
    - StaticObjects

    메소드(방법)
    - Contents.Remove
    - Contents.RemoveAll()
    - Lock
    - Unlock

    이벤트(사건)
    - Application_OnStart
    - Application_OnEnd

## Error
    프로퍼티
    - ASPCode
    - ASPDescription
    - Category
    - Column
    - Description
    - File
    - Line
    - Number
    - Source

## FileSystem

## TextStream

## Drive

## File

## Folder

## Dictionary, AdRotator, BrowerCap, Linking, Lotator