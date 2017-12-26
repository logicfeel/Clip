# VB 기본 제공 함수

## 날짜/시간

    - CDate
    - Date
    - DateAdd
    - DateDiff
    - DatePart
    - DateSerial
    - DateValue
    - Day
    - FormateDateTime
    - Hour
    - IsDate
    - Minute
    - Month
    - MonthName
    - Now
    - Second
    - Time
    - Timer
    - TimeSerial
    - TimeValue
    - Weekday
    - WeekdayName
    - Year

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

## 문자열 
    - InStr
    - InStrRev
    - LCase
    - Left
    - Len
    - LTrim
    - RTrim
    - Mid
    - Replace
    - Right
    - Space
    - StrComp
    - String
    - StrReverse
    - Ucase

## 변환
    - Asc
    - CBool
    - CByte
    - CCur
    - CDate
    - CDbl
    - Chr
    - CInt
    - CLng
    - CSng
    - CStr
    - Hex
    - Oct

## 배열
    - Array
    - Filter
    - IsArray
    - Join
    - LBound
    - Split
    - UBound

## 포맷
    - FormatCurrency
    - FormatDateTime
    - FormateNumber
    - FormatPercent

## 기타 함수
    - CreateOjbect
    - Eval
    - IsEmpty
    - IsNull
    - IsNumeric
    - IsObject
    - RGB
    - Round
    - ScriptEngine
    - ScriptEngineBuildVersion
    - ScriptEngineMajorVersion
    - ScriptEngineMinorVersion
    - TypeName
    - VarType

# ASP 객체

## Response

    컬렉션(수집)
    - Cookies

    프로퍼티(특성)
    - Buffer
    - CacheControl
    - Charset
    - ContentType
    - Expires
    - ExpiresAbsolute
    - IsClientConnected
    - Pics
    - Status

    메소드
    - AddHeader
    - AppendToLog
    - BinaryWrite
    - Clear
    - End
    - Flush
    - Redirect
    - Write

## Request

    컬렉션(수집)
    - ClientCerificate
    - Cookies
    - Form
    - QueryString
    - ServerVariables

    프로퍼티(특성)
    - TotlaBytes

    메소드(방법)
    - BinaryRead

## Request

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