<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 결과</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <%
            request.setCharacterEncoding("UTF-8");
            
            String userid = request.getParameter("userid");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String gender = request.getParameter("gender");
            String year = request.getParameter("year");
            String month = request.getParameter("month");
            String day = request.getParameter("day");
            String[] interests = request.getParameterValues("interests");
            String job = request.getParameter("job");
            
            boolean isValid = true;
            String errorMessage = "";
            
            if (userid == null || userid.trim().isEmpty()) {
                isValid = false;
                errorMessage = "아이디를 입력해주세요.";
            } else if (name == null || name.trim().isEmpty()) {
                isValid = false;
                errorMessage = "이름을 입력해주세요.";
            }
            
            if (isValid) {
        %>
                <div class="result">
                    <h3>회원가입이 완료되었습니다!</h3>
                    <div class="user-info">
                        <p><strong>아이디:</strong> <%= userid %></p>
                        <p><strong>이름:</strong> <%= name %></p>
                        <p><strong>이메일:</strong> <%= email %></p>
                        <p><strong>전화번호:</strong> <%= phone %></p>
                        <p><strong>성별:</strong> <%= gender.equals("male") ? "남성" : "여성" %></p>
                        <p><strong>생년월일:</strong> <%= year %>년 <%= month %>월 <%= day %>일</p>
                        <p><strong>관심사:</strong> 
                            <% if (interests != null) {
                                for (String interest : interests) {
                                    switch(interest) {
                                        case "sports": out.print("스포츠 "); break;
                                        case "music": out.print("음악 "); break;
                                        case "movies": out.print("영화 "); break;
                                        case "books": out.print("독서 "); break;
                                    }
                                }
                            } %>
                        </p>
                        <p><strong>직업:</strong> 
                            <% 
                                switch(job) {
                                    case "student": out.print("학생"); break;
                                    case "developer": out.print("개발자"); break;
                                    case "designer": out.print("디자이너"); break;
                                    case "manager": out.print("회사원"); break;
                                    case "other": out.print("기타"); break;
                                }
                            %>
                        </p>
                    </div>
                    <a href="index.jsp" class="btn">처음으로</a>
                </div>
        <%
            } else {
        %>
                <div class="error">
                    <p>회원가입 처리 중 오류가 발생했습니다.</p>
                    <p><%= errorMessage %></p>
                    <a href="javascript:history.back()" class="btn">돌아가기</a>
                </div>
        <%
            }
        %>
    </div>
</body>
</html> 