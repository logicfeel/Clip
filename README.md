# Clip > NPM


## 내용
  - NPM : NPM 및 관련 패키지 사용법
    + NPM 사용법
    + Bower 사용법
    + Gulp 사용법
    + Handlebars 사용법


### NPM 주요 명령

  - `npm install|i <패키지명#브런치 | 패키지@버전> --save-dev ` : 패키지.devDependencies 에 추가됨
 
  - `npm update  <패키지명> --save-dev ` : 패키지.devDependencies 목록을 갱신(설치) 함

  - ` npm run <스크립트명>` : 패키지.scripts 의 명령을 실행함

```bash
npm install (with no args, in package dir)
npm install [<@scope>/]<name>
npm install [<@scope>/]<name>@<tag>
npm install [<@scope>/]<name>@<version>
npm install [<@scope>/]<name>@<version range>
npm install <git-host>:<git-user>/<repo-name>
npm install <git repo url>
npm install <tarball file>
npm install <tarball url>
npm install <folder>

alias: npm i
common options: [-P|--save-prod|-D|--save-dev|-O|--save-optional] [-E|--save-exact] [-B|--save-bundle] [--no-save] [--dry-run]

```



### Git 주요 명령

  - `git clone <저장소>  --branch <브런치명> . ` : 현재 폴더에 git 복제본을 가져옴
