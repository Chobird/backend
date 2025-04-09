<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		//1. DB 연동 드라이버 로드
		Class.forName("org.mariadb.jdbc.Driver");
		
		//2. 연결 객체 생성
		String url = "jdbc:mariadb://localhost:3306/backend";
		String user = "chobird";
		String passwd = "1111";
		con = DriverManager.getConnection(url, user, passwd);
		
		//3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
		String sql = "SELECT * FROM member";
		pstmt = con.prepareStatement(sql);
		
		//4. SQL 실행
		rs = pstmt.executeQuery();
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 목록</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container"><br>	
	<h1 class="text-center font-weight-bold">사용자 정보</h1>
	<br>
	<table class="table table-hover">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>비밀번호</th>
		</tr>
<% 
		while(rs.next()) {
			String id = rs.getString("id");
			String name = rs.getString("name");
			String pwd = rs.getString("pwd");
%>	
		<tr>
			<td><a href="updateForm.jsp?id=<%=id%>"><%=id %></a></td>
			<td><%=name %></td>
			<td><%=pwd %></td>
		</tr>
<%
		}
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		//5. 객체 해제
		if(rs != null) try { rs.close(); } catch(Exception e) {}
		if(pstmt != null) try { pstmt.close(); } catch(Exception e) {}
		if(con != null) try { con.close(); } catch(Exception e) {}
	}
%>
	</table>
	</div>	
</body>
</html>