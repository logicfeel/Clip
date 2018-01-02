/*
	T-SQL 전반적인 내용 
*/
 

/*
[ 프로그램 기능]
 
 ㅇ 저장프로시저 
 ㅇ 함수
	- 스칼라 함수 : 단일 ROW 리턴 (text,ntext,image,cursor, rowversion 제외)
	  * body : BEGIN ~ END
	- 다중문 테이블 반환 함수 : 테이블
	  * body : BEGIN ~ END
	- 인라인 테이블 반환 함수

*/


-- *******************************************************
-- ************** <함수 :: 스칼라 함수>  *****************

USE [LMS]						-- 사용 DB명 설정
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- ============================================= 
-- Author:		작성자, 수정자
-- Create date: 날짜
-- Description:	설명
-- =============================================
CREATE FUNCTION [dbo].[sfn_스칼라함수명] (@입력변수 int)
	RETURNS varchar(10)
AS
BEGIN
	RETURN N'값'
END
GO

-- [1.호출방식]
SELECT dbo.sfn_스칼라함수명(1) 
SELECT * WHERE dbo.sfn_스칼라함수명(1) = 1


-- *******************************************************
-- ********* <함수 :: 다중문 테이블 반환 함수>  **********


USE [LMS]						-- 사용 DB명 설정
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- ============================================= 
-- Author:		작성자, 수정자
-- Create date: 날짜
-- Description:	설명
-- =============================================
CREATE FUNCTION [dbo].[tfn_스칼라함수명2] 
(
	@입력변수 int
)
RETURNS @임시테이블 TABLE
(
		ID int PRIMARY KEY NOT NULL,
		PW varchar(10)
)
AS
BEGIN
	INSERT @임시테이블(ID,PW)VALUES('1','2')	-- 리턴테이블에 삽입
	RETURN										-- 리턴
END
GO

-- [1.호출방식]
SELECT * FROM dbo.tfn_스칼라함수명2(1)
SELECT * FROM tfn_스칼라함수명2(1)
SELECT * FROM tfn_스칼라함수명2(1, DEFAULT)		-- 기본값 사용


-- *******************************************************
-- ********* <함수 :: 인라인 테이블 반환 함수>  **********

-- ============================================= 
-- Author:		작성자, 수정자
-- Create date: 날짜
-- Description:	설명
-- =============================================
USE [LMS]						-- 사용 DB명 설정
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





-- *******************************************************
-- ************ <스토어프로시저 생성>  *******************


USE [LMS]						-- 사용 DB명 설정
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- ============================================= 
-- Author:		작성자, 수정자
-- Create date: 날짜
-- Description:	설명
-- =============================================
CREATE PROC [dbo].[Sp_User]		-- 소유자명.프로시저명 (CREATE PROC[EDURE])
	@SeqNo int					-- 입력 :변수명, 자료형 [, 기본값]
	, @index int = 0			-- 입력 (기본값)
AS

SELECT * FROM MC_Member			-- 쿼리부
GO


-- [1.호출방식]
EXEC Sp_User					-- 프로시저명 파라메터값

-- ******************************************************* 
-- ********************* <제어문>  ***********************

-- [1.변수선언/설정]
DECLARE @변수명 CHAR(1)

SET @변수명 = N'정보'

-- [1.1.임시테이블 생성]
DECLARE @임시테이블 TABLE
(
	ID		int identity(1,1),	-- 1 자동증가, PK
	Number	int
)


-- [2.블럭]
BEGIN
	SELECT '1'		-- 모든 조건은 블럭으로 묶음
END


-- [3.1 조건문]
IF (@변수명 = '비교값')
BEGIN
	SELECT '1'		-- 모든 조건은 블럭으로 묶음 
END
-- [3.2 조건문]
IF (@변수명 = '비교값')
	SELECT '1'		-- !단 단일 실행은 BEGIN문 없음	
ELSE IF 1=1

-- [3.3 조건문]
IF EXISTS(SELECT * FROM C04_M_Member WHERE  u_idx = @u_idx)


-- [4.반복문]
WHILE (@변수명 > 3)
BEGIN
	SET @변수명 = @변수명 + 1;
END
WHILE (0 < @loopCnt)
BEGIN
	
	SET @loopCnt = @loopCnt - 1;
END


-- [5.선택문]
SELECT	
	CASE @변수명	-- 값 한개로 비교
		WHEN 'A' THEN '값A'
		WHEN 'B' THEN '값B'
		ELSE '값'
	END

SELECT
	CASE			-- 내부 조건별 비교
		WHEN @변수명 = 'A' THEN '값A'
		WHEN @변수명 = 'B' THEN '값B'
		ELSE '값'
	END


-- [6.종료]
RETURN


-- [7.점프]
GOTO error			-- error(별칭) 으로 분기
error:				-- 점프 위치


-- ******************************************************* 
-- ********************* <커서>  ***********************



FETCH NEXT		-- 다음행
FETCH PRIOR		-- 이전행
FETCH FIRST		-- 첫행
FETCH LAST		-- 마지막행


--- 예제 -------------
-- 참조 :  http://infodbbase.tistory.com/35

DECLARE @i int, @ii char(1)

DECLARE t_Cur CURSOR FOR SELECT auth_ac_idx, accountType_cd FROM MnAuth_Account
	
OPEN t_Cur							-- 커서 열기

FETCH NEXT FROM t_Cur INTO @i, @ii	-- 첫번째 가져오기

WHILE @@FETCH_STATUS = 0			-- (0:수행, -1:실패, -2:행없음)
BEGIN
	
	PRINT '@i'
	PRINT @i
	PRINT '@ii'
	PRINT @ii
	FETCH NEXT FROM t_Cur INTO @i, @ii
END

CLOSE t_Cur							-- 커서 닫기
DEALLOCATE t_Cur					-- 리소스 제거




-- *******************************************************
-- ***************** <자주 사용하는 함수>  ***************
-- [1.값 유무 검사]
IF EXISTS(SELECT 0)	-- 조회값이 있으면 TRUE
IF @변수명 IS NULL	-- NULL 일경우 TRUE


-- [2.쿼리파싱 실행]
SET @변수명 = N'SELECT ****; INSERT '
SET @변수명 = N'SELECT ****;  '
	+ '     추가내용 sql            '

EXEC (@변수명)
EXEC 프로시저명

-- [3.출력조회]
PRINT @변수명

-- [4.날짜형변환]
SELECT CONVERT(CHAR(19),GETDATE(), 20)	-- 출력 : 2015-08-26 17:37:40

select CONVERT(CHAR(19), GETDATE(), 126) -- 날짜  Timestamp 형식 변환


SELECT * FROM @임시테이블 WHERE 1=1 
and GETDATE()  BETWEEN '2001-01-01' AND '2001-01-31'


-- [4.DB 증가값 초기화]
DBCC CHECKIDENT ('테이블명',RESEED,0)


-- [5.재귀호출]
WITH MENU_CTE(mn_idx, parent_id, lvl) AS
(
	select mn_idx, parent_id, 1 as lvl
	from SYS_AdminMenu
	where mn_idx = 1

	UNION ALL

	select C.mn_idx, C.parent_id, lvl + 1
	FROM SYS_AdminMenu C, MENU_CTE CTE
	WHERE C.parent_id = CTE.mn_idx
--	AND C.mn_idx != C.parent_id			-- 최상위 자신의 재귀호출을 막기 위해서
)
SELECT * FROM MENU_CTE





-- *******************************************************
-- **************** <MSSQL Lock 처리 >  *******************

sp_lock		-- 락 조회

sp_who

dbcc inputbuffer (53)	-- 관련 쿼리 조회

kill 81


-- *******************************************************
-- **************** <트랜젝션 처리>  *******************
/*
	- @@ERROR : 최종 처리 결과에 대한 오류 정보만 가진다.
	  (실패후 성공시 추출못함)

	- try catch : SQL 2005 부터 추가됨
	
	- @@TRANCOUNT  (중첩 Tran 문에서 사용)
		+ BEGIN TRAN :  @@TRANCOUNT =  @@TRANCOUNT + 1
		+ ROLLBACK TRAN :  @@TRANCOUNT = 0
		+ COMMIT TRAN : @@TRANCOUNT =  @@TRANCOUNT - 1
*/

-- [1. 오류 + 메시지 로그기록]
BEGIN TRAN							-- 트랜젝션 시작

DECLARE @error_num int, @error_msg varchar(400)

-- "트랜젝션 내용"	

IF @@ERROR <> 0						-- 블럭별 에러 종류 발생
BEGIN
	SET @error_msg = '에러'			-- 사용자 오류 메세지
	SET @error_num = 30001			-- 사용자 오류번호
	GOTO error
END

COMMIT TRAN							-- 커밋 & 종료
RETURN				

error:								-- 에러처리 블럭
	RAISERROR(@error_msg, @error_num, 16, 1)
	ROLLBACK TRAN
GO


-- [2. 오류만]
BEGIN TRAN							-- 트랜젝션 시작

-- "트랜젝션 내용"	

IF @@ERROR <> 0 GOTO error			-- 오류 검출 블럭

COMMIT TRAN							-- 커밋 & 종료
RETURN				

error:								-- 에러처리 블럭
	ROLLBACK TRAN
GO


-- [3.TRY 심플형]

BEGIN TRY
	BEGIN TRAN

	-- "트랜젝션 내용"

	COMMIT TRAN
END TRY

BEGIN CATCH							-- 오류발생시 실행 Catch
	ROLLBACK TRAN
END CATCH

-- [3.TRY + 오류메세지]


BEGIN TRY
	BEGIN TRAN						-- 트랜젝션 시작

	-- "트랜젝션 내용"

	COMMIT TRAN
END TRY

BEGIN CATCH							-- 오류발생시 실행 Catch
    ROLLBACK TRAN
	SELECT '오류정보'
		, ERROR_NUMBER()	as	'오류 번호'
		, ERROR_MESSAGE()	as	'오류 메세지'
		, ERROR_SEVERITY()	as	'오류 심각도'
		, ERROR_STATE()		as	'오류 상태'
		, ERROR_LINE()		as  '오류 줄'
		, ERROR_PROCEDURE() as	'SP명'
END CATCH




-- *******************************************************
-- **************** <기타 - dll 등록>  *******************
-- [1.어셈블리를등록]
-- DLL 파일을 등록해서 함수에서 호출 사용  (다양하게 응용 가능)

USE [LMS]									-- DB선택
GO

EXEC sp_configure 'clr enabled', 1			-- CLR환경을사용하도록설정합니다.
GO

RECONFIGURE
GO

CREATE ASSEMBLY InnoDll
FROM 'C:\SHA-256\fnEnCryptSHA256.dll'		-- DLL파일 경로
WITH PERMISSION_SET= SAFE
GO

-- 문자형을SHA256로반환하는함수작성
CREATE FUNCTION  fnGetStringToSha256 (@Str nvarchar(1000))
RETURNS  varbinary(8000)
AS EXTERNAL NAME InnoDll.fnEnCryptSHA256.GetStringToSha256	-- 네임스페이스.클래스.메소드명
GO

-- 오류메세지 조회
select * from sys.messages a 
where  1=1
	and a.message_id = 512		-- 오류코드
	and a.language_id = 1042	-- 언어(한글)



--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- insert 기본형
INSERT into @테이블명 (c1, c2) values('11', '22')

-- insert + select
INSERT into @테이블명 (c1, c2) SELECT  '11', '22' FROM 조회테이블명

-- 복제
select '11', '22' into @복사할테이블명 from @원본테이블

--  ** [DB명][소유자명][테이블명] 중요!
-- select * into Test.dbo.Book from LMS.dbo.CY_Book

-- 여러값 입력
INSERT into (c1, c2) values('11', '22'), ('11', '22') , ('11', '22')

-- update 기본형
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

-- update + select
UPDATE table_name
SET a = a.bbb
FROM TBL as a
where table_name.idx = a.idx

--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
/*
DDL

	스토어프로시저 생성
	스칼리 함수 생성
	테이블 반환 함수 생성
	유형
		- 사용자 데이터 형식 정의
		- 사용자 테이블 형식 정의


DML

트리거
뷰


힘수조작
	날짜 변환
	자료형 변환
	자료 가공
	제어문
	임시테이블


*/

