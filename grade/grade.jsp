<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>성적 계산 결과</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <%
            try {
                request.setCharacterEncoding("UTF-8");
                String name = request.getParameter("name");
                int korean = Integer.parseInt(request.getParameter("korean"));
                int english = Integer.parseInt(request.getParameter("english"));
                int math = Integer.parseInt(request.getParameter("math"));
                
                if (korean < 0 || korean > 100 || english < 0 || english > 100 || math < 0 || math > 100) {
                    throw new IllegalArgumentException("점수는 0에서 100 사이여야 합니다.");
                }
                
                double average = (korean + english + math) / 3.0;
                String grade;
                
                if (average >= 90) grade = "A";
                else if (average >= 80) grade = "B";
                else if (average >= 70) grade = "C";
                else if (average >= 60) grade = "D";
                else grade = "F";
        %>
                <div class="result">
                    <h3><%= name %>님의 성적 결과</h3>
                    <table class="grade-table">
                        <tr>
                            <th>과목</th>
                            <th>점수</th>
                        </tr>
                        <tr>
                            <td>국어</td>
                            <td><%= korean %>점</td>
                        </tr>
                        <tr>
                            <td>영어</td>
                            <td><%= english %>점</td>
                        </tr>
                        <tr>
                            <td>수학</td>
                            <td><%= math %>점</td>
                        </tr>
                        <tr>
                            <td>평균</td>
                            <td><%= String.format("%.2f", average) %>점</td>
                        </tr>
                        <tr>
                            <td>학점</td>
                            <td><%= grade %></td>
                        </tr>
                    </table>
                    <a href="index.jsp" class="btn">다시 계산하기</a>
                </div>
        <%
            } catch (Exception e) {
        %>
                <div class="error">
                    <p>성적 계산 중 오류가 발생했습니다.</p>
                    <p><%= e.getMessage() %></p>
                    <a href="index.jsp" class="btn">돌아가기</a>
                </div>
        <%
            }
        %>
    </div>
</body>
</html> 