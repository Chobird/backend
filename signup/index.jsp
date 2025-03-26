<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h2>회원가입</h2>
        <form method="post" action="process.jsp">
            <div class="form-group">
                <label for="userid">아이디</label>
                <input type="text" id="userid" name="userid" required>
            </div>
            <div class="form-group">
                <label for="password">비밀번호</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="name">이름</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">이메일</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="phone">전화번호</label>
                <input type="tel" id="phone" name="phone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="010-0000-0000" required>
            </div>
            <div class="form-group">
                <label>성별</label>
                <div class="radio-group">
                    <input type="radio" id="male" name="gender" value="male" required>
                    <label for="male">남성</label>
                    <input type="radio" id="female" name="gender" value="female">
                    <label for="female">여성</label>
                </div>
            </div>
            <div class="form-group">
                <label>생년월일</label>
                <div class="birth-group">
                    <select name="year" required>
                        <option value="">년도</option>
                        <% for(int i=2024; i>=1900; i--) { %>
                            <option value="<%= i %>"><%= i %></option>
                        <% } %>
                    </select>
                    <select name="month" required>
                        <option value="">월</option>
                        <% for(int i=1; i<=12; i++) { %>
                            <option value="<%= i %>"><%= i %></option>
                        <% } %>
                    </select>
                    <select name="day" required>
                        <option value="">일</option>
                        <% for(int i=1; i<=31; i++) { %>
                            <option value="<%= i %>"><%= i %></option>
                        <% } %>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label>관심사</label>
                <div class="checkbox-group">
                    <input type="checkbox" id="interest1" name="interests" value="sports">
                    <label for="interest1">스포츠</label>
                    <input type="checkbox" id="interest2" name="interests" value="music">
                    <label for="interest2">음악</label>
                    <input type="checkbox" id="interest3" name="interests" value="movies">
                    <label for="interest3">영화</label>
                    <input type="checkbox" id="interest4" name="interests" value="books">
                    <label for="interest4">독서</label>
                </div>
            </div>
            <div class="form-group">
                <label for="job">직업</label>
                <select id="job" name="job" required>
                    <option value="">선택하세요</option>
                    <option value="student">학생</option>
                    <option value="developer">개발자</option>
                    <option value="designer">디자이너</option>
                    <option value="manager">회사원</option>
                    <option value="other">기타</option>
                </select>
            </div>
            <button type="submit" class="btn">가입하기</button>
        </form>
    </div>
</body>
</html> 