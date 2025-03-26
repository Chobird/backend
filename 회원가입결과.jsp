<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입 결과</title>
    <style>
        .result-container {
            width: 600px;
            margin: 0 auto;
            padding: 20px;
        }
        .result-item {
            margin-bottom: 15px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .label {
            font-weight: bold;
            color: #333;
        }
        .back-link {
            display: inline-block;
            margin-top: 20px;
            color: #4CAF50;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="result-container">
        <h2>회원가입 결과</h2>
        <%
            String id = request.getParameter("id");
            String password = request.getParameter("password");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String gender = request.getParameter("gender");
            String birth = request.getParameter("birth");
            String job = request.getParameter("job");
            
            // 체크박스는 여러 개 선택 가능하므로 배열로 받음
            String[] interests = request.getParameterValues("interests");
            String interestsStr = "";
            if (interests != null) {
                interestsStr = String.join(", ", interests);
            } else {
                interestsStr = "선택 없음";
            }
        %>
        
        <div class="result-item">
            <span class="label">아이디:</span> <%= id %>
        </div>
        <div class="result-item">
            <span class="label">비밀번호:</span> <%= password.replaceAll(".", "*") %>
        </div>
        <div class="result-item">
            <span class="label">이름:</span> <%= name %>
        </div>
        <div class="result-item">
            <span class="label">이메일:</span> <%= email %>
        </div>
        <div class="result-item">
            <span class="label">전화번호:</span> <%= phone %>
        </div>
        <div class="result-item">
            <span class="label">성별:</span> <%= gender %>
        </div>
        <div class="result-item">
            <span class="label">생년월일:</span> <%= birth %>
        </div>
        <div class="result-item">
            <span class="label">관심사:</span> <%= interestsStr %>
        </div>
        <div class="result-item">
            <span class="label">직업:</span> <%= job %>
        </div>
        
        <a href="회원가입.html" class="back-link">← 다시 가입하기</a>
    </div>
</body>
</html> 