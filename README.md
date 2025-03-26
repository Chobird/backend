# JSP 웹 애플리케이션 모음

이 프로젝트는 JSP를 사용한 4가지 기본적인 웹 애플리케이션을 포함하고 있습니다.

## 기능

### 1. 계산기 (calculator)
- 기본적인 사칙연산 기능
- 실수 계산 지원
- 0으로 나누기 등 예외 처리

### 2. 게시판 (post)
- 게시글 작성 기능
- 파일 첨부 기능
- 작성된 게시글 미리보기

### 3. 성적 관리 (grade)
- 학생 성적 입력
- 평균 점수 계산
- 학점 자동 계산 (A, B, C, D, F)

### 4. 회원가입 (signup)
- 사용자 정보 입력
- 다양한 입력 필드 (라디오 버튼, 체크박스, 선택 상자)
- 입력값 유효성 검사

## 기술 스택

- JSP (JavaServer Pages)
- HTML5
- CSS3
- Java

## 설치 및 실행 방법

1. 요구사항
   - Apache Tomcat 8.5 이상
   - JDK 8 이상

2. 설치
   ```bash
   git clone https://github.com/[사용자명]/[저장소명].git
   ```

3. 배포
   - 프로젝트 파일을 Tomcat의 webapps 디렉토리에 복사
   - Tomcat 서버 시작

4. 접속
   - 웹 브라우저에서 다음 URL로 접속:
     - 계산기: http://localhost:8080/calculator/
     - 게시판: http://localhost:8080/post/
     - 성적관리: http://localhost:8080/grade/
     - 회원가입: http://localhost:8080/signup/

## 프로젝트 구조

```
├── calculator/
│   ├── index.jsp
│   ├── calculate.jsp
│   └── style.css
├── post/
│   ├── index.jsp
│   ├── write.jsp
│   └── style.css
├── grade/
│   ├── index.jsp
│   ├── calculate.jsp
│   └── style.css
└── signup/
    ├── index.jsp
    ├── process.jsp
    └── style.css
```

## 라이선스

이 프로젝트는 MIT 라이선스를 따릅니다. 