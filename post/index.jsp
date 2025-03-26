<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h2>게시글 작성</h2>
        <form method="post" action="write.jsp" enctype="multipart/form-data">
            <div class="form-group">
                <label for="title">제목</label>
                <input type="text" id="title" name="title" required>
            </div>
            <div class="form-group">
                <label for="author">작성자</label>
                <input type="text" id="author" name="author" required>
            </div>
            <div class="form-group">
                <label for="content">내용</label>
                <textarea id="content" name="content" required></textarea>
            </div>
            <div class="form-group">
                <label for="file">첨부파일</label>
                <input type="file" id="file" name="file">
            </div>
            <button type="submit" class="btn">글 작성</button>
        </form>
    </div>
</body>
</html> 