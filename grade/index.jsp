<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>성적 관리</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h2>성적 입력</h2>
        <form method="post" action="calculate.jsp">
            <div class="form-group">
                <label for="name">이름</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="korean">국어</label>
                <input type="number" id="korean" name="korean" min="0" max="100" required>
            </div>
            <div class="form-group">
                <label for="english">영어</label>
                <input type="number" id="english" name="english" min="0" max="100" required>
            </div>
            <div class="form-group">
                <label for="math">수학</label>
                <input type="number" id="math" name="math" min="0" max="100" required>
            </div>
            <button type="submit" class="btn">성적 계산</button>
        </form>
    </div>
</body>
</html> 