<%@page import="cs.dit.member.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cs.dit.member.MemberDAO"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>  
<%

// 	MemberDAO dao = new MemberDAO();
// 	ArrayList<MemberDTO> dtos = dao.list();
// 	request.setAttribute("dtos", dtos);
	
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사진게시물 목록</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<style>
		.photo-card {
			transition: transform 0.2s;
		}
		.photo-card:hover {
			transform: translateY(-5px);
		}
		.card-img-top {
			height: 200px;
			object-fit: cover;
		}
	</style>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	  <a class="navbar-brand" href="index.jsp">사진게시물</a>
	  <div class="collapse navbar-collapse">
	    <ul class="navbar-nav">
	      <li class="nav-item active">
	        <a class="nav-link" href="list.do">전체 게시물</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="insertForm.do">새 게시물</a>
	      </li>
	    </ul>
	  </div>  
	</nav>
	
	<div class="container mt-4">
		<div class="d-flex justify-content-between align-items-center mb-4">
			<h2 class="font-weight-bold">📸 사진게시물 목록</h2>
			<button type="button" class="btn btn-success" onclick="location.href='insertForm.do'">
				➕ 새 게시물 작성
			</button>
		</div>
		
		<c:choose>
			<c:when test="${empty dtos}">
				<div class="text-center mt-5">
					<h4 class="text-muted">등록된 게시물이 없습니다.</h4>
					<p class="text-muted">첫 번째 사진게시물을 작성해보세요!</p>
					<button type="button" class="btn btn-primary btn-lg" onclick="location.href='insertForm.do'">
						게시물 작성하기
					</button>
				</div>
			</c:when>
			<c:otherwise>
				<div class="row">
					<c:forEach var="dto" items="${dtos}">
						<div class="col-md-4 mb-4">
							<div class="card photo-card h-100">
								<img src="/photos/${dto.photo}" class="card-img-top" alt="${dto.title}">
								<div class="card-body d-flex flex-column">
									<h5 class="card-title">${dto.title}</h5>
									<p class="card-text">${dto.content}</p>
									<div class="mt-auto">
										<small class="text-muted">
											작성자: <strong>${dto.name}</strong><br>
											<fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd HH:mm"/>
										</small>
									</div>
								</div>
								<div class="card-footer bg-transparent">
									<div class="btn-group w-100">
										<button type="button" class="btn btn-outline-primary btn-sm" 
												onclick="location.href='get.do?id=${dto.id}'">수정</button>
										<a href="/photos/${dto.photo}" download class="btn btn-outline-success btn-sm">다운로드</a>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>