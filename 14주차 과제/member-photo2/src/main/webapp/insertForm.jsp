<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>새 사진게시물 작성</title>
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
	      <li class="nav-item active">
	        <a class="nav-link" href="insertForm.do">새 게시물</a>
	      </li>
	    </ul>
	  </div>  
	</nav>
	
	<div class="container mt-4">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header bg-primary text-white">
						<h4 class="mb-0">📸 새 사진게시물 작성</h4>
					</div>
					<div class="card-body">
						<form action="insert.do" method="post" enctype="multipart/form-data">
						  <div class="form-group">
					      <label for="title"><strong>제목:</strong></label>
					      <input type="text" class="form-control" id="title" name="title" placeholder="게시물 제목을 입력하세요" required>
					    </div>
					    
					    <div class="form-row">
					    	<div class="form-group col-md-6">
						      <label for="id"><strong>작성자 ID:</strong></label>
						      <input type="text" class="form-control" id="id" name="id" placeholder="아이디 입력" required>
						    </div>
						    <div class="form-group col-md-6">
						      <label for="name"><strong>작성자명:</strong></label>
						      <input type="text" class="form-control" id="name" name="name" placeholder="이름 입력" required>
						    </div>
					    </div>
					    
					    <div class="form-group">
					      <label for="pwd"><strong>비밀번호:</strong></label>
					      <input type="password" class="form-control" id="pwd" name="pwd" placeholder="게시물 수정/삭제용 비밀번호" required>
					    </div>
					    
					    <div class="form-group">
					      <label for="content"><strong>내용:</strong></label>
					      <textarea class="form-control" id="content" name="content" rows="4" placeholder="사진에 대한 설명을 입력하세요" required></textarea>
					    </div>
					    
					    <div class="form-group">
					      <label for="photo"><strong>사진 업로드:</strong></label>
					      <input type="file" class="form-control-file" id="photo" name="photo" accept="image/*" required>
					      <small class="form-text text-muted">JPG, PNG, GIF 형식의 이미지 파일을 업로드하세요.</small>
					    </div>
					    
					    <hr>
					    <div class="text-center">
								<button type="submit" class="btn btn-primary btn-lg mr-2">📝 게시물 등록</button>
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