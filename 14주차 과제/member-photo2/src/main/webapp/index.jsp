<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사진게시물 관리</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>	
</head>
<body>
	<div class="jumbotron text-center" style="margin-bottom:0">
	  <h1>📸 사진게시물 관리시스템</h1>
	  <p>아름다운 사진을 공유하고 관리하는 웹 애플리케이션</p>
	</div>
	
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	  <a class="navbar-brand" href="index.jsp">사진게시물</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="collapsibleNavbar">
	    <ul class="navbar-nav">
	      <li class="nav-item">
	        <a class="nav-link" href="list.do">전체 게시물</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="insertForm.do">새 게시물</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">도움말</a>
	      </li>    
	    </ul>
	  </div>  
	</nav>
	<br><br>
  <div class="text-center">
  	<div class="container">
  		<div class="row">
  			<div class="col-md-6">
  				<div class="card">
  					<div class="card-body">
  						<h5 class="card-title">📋 게시물 목록</h5>
  						<p class="card-text">등록된 모든 사진게시물을 확인하고 관리하세요.</p>
  						<button type="button" class="btn btn-primary btn-lg" onclick="location.href='list.do'">목록 보기</button>
  					</div>
  				</div>
  			</div>
  			<div class="col-md-6">
  				<div class="card">
  					<div class="card-body">
  						<h5 class="card-title">➕ 새 게시물</h5>
  						<p class="card-text">새로운 사진과 함께 게시물을 작성하세요.</p>
  						<button type="button" class="btn btn-success btn-lg" onclick="location.href='insertForm.do'">게시물 작성</button>
  					</div>
  				</div>
  			</div>
  		</div>
  	</div>
	</div>
</body>
</html>
