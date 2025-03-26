<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판 글쓰기 결과</title>
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
        .content {
            white-space: pre-wrap;
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
        <h2>게시판 글쓰기 결과</h2>
        <%
            String title = request.getParameter("title");
            String author = request.getParameter("author");
            String content = request.getParameter("content");
            String attachment = request.getParameter("attachment");
        %>
        
        <div class="result-item">
            <span class="label">제목:</span> <%= title %>
        </div>
        <div class="result-item">
            <span class="label">작성자:</span> <%= author %>
        </div>
        <div class="result-item">
            <span class="label">내용:</span>
            <div class="content"><%= content %></div>
        </div>
        <div class="result-item">
            <span class="label">첨부파일:</span> <%= attachment != null ? attachment : "없음" %>
        </div>
        
        <a href="게시판글쓰기.html" class="back-link">← 다시 글쓰기</a>
    </div>
</body>
</html> 