<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>학생 점수 결과</title>
</head>
<body>
    <h2>학생 점수 결과</h2>
    <%
        // 입력받은 점수를 문자열에서 숫자로 변환
        int korean = Integer.parseInt(request.getParameter("korean"));
        int english = Integer.parseInt(request.getParameter("english"));
        int math = Integer.parseInt(request.getParameter("math"));
        
        // 총점 계산
        int total = korean + english + math;
        
        // 평균 계산 (소수점 2자리까지)
        double average = total / 3.0;
        String formattedAverage = String.format("%.2f", average);
    %>
    
    <p>국어 점수: <%= korean %></p>
    <p>영어 점수: <%= english %></p>
    <p>수학 점수: <%= math %></p>
    <p>총점: <%= total %></p>
    <p>평균: <%= formattedAverage %></p>
    
    <p><a href="예제 4-1.html">다시 입력하기</a></p>
</body>
</html> 