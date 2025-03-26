<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시글 작성 결과</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <%
            request.setCharacterEncoding("UTF-8");
            String uploadPath = application.getRealPath("/uploads");
            
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }
            
            try {
                MultipartRequest multi = new MultipartRequest(
                    request,
                    uploadPath,
                    10 * 1024 * 1024, // 최대 10MB
                    "UTF-8",
                    new DefaultFileRenamePolicy()
                );
                
                String title = multi.getParameter("title");
                String author = multi.getParameter("author");
                String content = multi.getParameter("content");
                String fileName = multi.getFilesystemName("file");
                
                if (title != null && author != null && content != null) {
        %>
                    <div class="result">
                        <h3>게시글이 성공적으로 작성되었습니다</h3>
                        <div class="post-content">
                            <p><strong>제목:</strong> <%= title %></p>
                            <p><strong>작성자:</strong> <%= author %></p>
                            <p><strong>내용:</strong><br><%= content.replace("\n", "<br>") %></p>
                            <% if (fileName != null) { %>
                                <p><strong>첨부파일:</strong> <%= fileName %></p>
                            <% } %>
                        </div>
                        <a href="index.jsp" class="btn">글 목록으로</a>
                    </div>
        <%
                }
            } catch (Exception e) {
        %>
                <div class="error">
                    <p>게시글 작성 중 오류가 발생했습니다.</p>
                    <p><%= e.getMessage() %></p>
                    <a href="index.jsp" class="btn">돌아가기</a>
                </div>
        <%
            }
        %>
    </div>
</body>
</html> 