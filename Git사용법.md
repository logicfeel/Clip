

[Git] GitHub Remote(원격) 저장소에 브랜치 생성/삭제하기

    출처: http://mobicon.tistory.com/163 [Mobile Convergence]




생활코딩에 있음  전체적 구조 파악

    https://mylko72.gitbooks.io/git/content/branch/branch.html



잘 안외어지는 Git 정리

    http://dolfalf.tistory.com/73


# 브런치 변경후 기존꺼 삭제 하기

## 브런치명 변경 

- 기존 이름 변경 (auto_1.x.x   >> 1.x.x-auto)
> `git branch -m  auto_1.x.x  1.x.x-auto`

- 변경이름 보내기(서버)
> `git push origin 1.x.x-auto`

- 브런치 내역 조회
> `git remote show origin`  

- 기존 브런치명 삭제
>`git push origin :auto_1.x.x`
