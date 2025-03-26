# 게시판 및 회원가입 시스템

JSP를 이용한 간단한 게시판 글쓰기와 회원가입 시스템입니다.

## 주요 기능

### 게시판 글쓰기
- 제목, 작성자, 내용 입력
- 첨부파일 업로드 기능
- 입력된 내용 확인 페이지

### 회원가입
- 기본 정보 입력 (아이디, 비밀번호, 이름, 이메일, 전화번호)
- 성별 선택 (라디오 버튼)
- 생년월일 선택
- 관심사 다중 선택 (체크박스)
- 직업 선택 (드롭다운)

## 기술 스택
- HTML5
- CSS3
- JSP (JavaServer Pages)
- Apache Tomcat

## 설치 및 실행 방법

1. Apache Tomcat 설치
   - [Apache Tomcat](https://tomcat.apache.org/) 다운로드 및 설치

2. 프로젝트 설정
   - 프로젝트 파일을 Tomcat의 webapps 디렉토리에 복사
   - Tomcat 서버 실행

3. 접속
   - 웹 브라우저에서 `http://localhost:8080/프로젝트명` 접속

## 프로젝트 구조
```
WebContent/
├── WEB-INF/
│   └── web.xml
├── 게시판글쓰기.html
├── 게시판결과.jsp
├── 회원가입.html
└── 회원가입결과.jsp
```

## 라이선스
이 프로젝트는 MIT 라이선스를 따릅니다. 