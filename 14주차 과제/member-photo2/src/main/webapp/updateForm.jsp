<%@page import="cs.dit.member.MemberDAO"%>
<%@page import="cs.dit.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*, javax.naming.*, javax.sql.*" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<% 	
// 	String id = request.getParameter("id");
// 	MemberDTO dto = new MemberDTO();
// 	MemberDAO dao = new MemberDAO();
	
// 	dto = dao.get(id);
%>	
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사진게시물 수정</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	  <a class="navbar-brand" href="index.jsp">사진게시물</a>
	  <div class="collapse navbar-collapse">
	    <ul class="navbar-nav">
	      <li class="nav-item">
	        <a class="nav-link" href="list.do">전체 게시물</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="insertForm.do">새 게시물</a>
	      </li>
	    </ul>
	  </div>  
	</nav>

	<div class="container mt-4">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header bg-warning text-dark">
						<h4 class="mb-0">✏️ 사진게시물 수정</h4>
					</div>
					<div class="card-body">
						<div class="row mb-3">
							<div class="col-md-4">
								<img src="/photos/${dto.photo}" class="img-fluid rounded" alt="현재 사진">
								<small class="text-muted d-block mt-1">현재 사진: ${dto.photo}</small>
							</div>
							<div class="col-md-8">
								<h5>${dto.title}</h5>
								<p class="text-muted">작성자: ${dto.name}</p>
								<p class="text-muted">등록일: <fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd HH:mm"/></p>
							</div>
						</div>
						
						<hr>
						
						<form action="update.do" method="post" enctype="multipart/form-data">
						  <div class="form-group">
					      <label for="title"><strong>제목:</strong></label>
					      <input type="text" class="form-control" id="title" name="title" value="${dto.title}" required>
					    </div>
					    
					    <div class="form-group">
					      <label for="id"><strong>작성자 ID:</strong></label>
					      <input type="text" class="form-control" id="id" name="id" value="${dto.id}" readonly>
					    </div>
					    
					    <div class="form-group">
					      <label for="name"><strong>작성자명:</strong></label>
					      <input type="text" class="form-control" id="name" name="name" value="${dto.name}" required>
					    </div>
					    
					    <div class="form-group">
					      <label for="pwd"><strong>비밀번호:</strong></label>
					      <input type="password" class="form-control" id="pwd" name="pwd" value="${dto.pwd}" required>
					    </div>
					    
					    <div class="form-group">
					      <label for="content"><strong>내용:</strong></label>
					      <textarea class="form-control" id="content" name="content" rows="4" required>${dto.content}</textarea>
					    </div>
					    
					    <div class="form-group">
					      <label for="photo"><strong>새 사진 업로드 (선택사항):</strong></label>
					      <input type="file" class="form-control-file" id="photo" name="photo" accept="image/*">
					      <small class="form-text text-muted">새 사진을 선택하지 않으면 기존 사진이 유지됩니다.</small>
					    </div>
					    
					    <hr>
					    <div class="text-center">
					    	<button type="submit" class="btn btn-warning btn-lg mr-2">💾 수정완료</button>
					    	<button type="button" class="btn btn-danger btn-lg mr-2" 
					    	        onclick="if(confirm('정말 삭제하시겠습니까?')) location.href='delete.do?id=${dto.id}'">🗑️ 삭제</button>
					    	<button type="button" class="btn btn-secondary btn-lg" onclick="location.href='list.do'">📋 목록으로</button>
						</div>
					</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>