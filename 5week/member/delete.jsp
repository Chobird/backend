<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"  %>
    
<%
	String id = request.getParameter("id");
	
	Connection con = null;
	PreparedStatement pstmt = null;
	
	try {
		//1. DB 연동 드라이버 로드
		Class.forName("org.mariadb.jdbc.Driver");
		
		//2. 연결 객체 생성
		String url = "jdbc:mariadb://localhost:3306/backend";
		String user = "chobird";
		String passwd = "1111";
		con = DriverManager.getConnection(url, user, passwd);
		
		//3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
		String sql = "DELETE FROM member WHERE id = ?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		
		//4. SQL 실행
		pstmt.executeUpdate();
		
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		//5. 객체 해제
		if(pstmt != null) try { pstmt.close(); } catch(Exception e) {}
		if(con != null) try { con.close(); } catch(Exception e) {}
	}
%>
	
<script>
	let ans = alert("삭제되었습니다!");
	if (!ans){
		location.href='list.jsp';
	}
</script>


