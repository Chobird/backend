<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>환영합니다</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <br>
        <h2 class="text-center font-weight-bold">환영합니다</h2>
        <hr/>
        <%
            String id = null;
            Cookie[] cookies = request.getCookies();
            if(cookies != null){
                for(Cookie cookie : cookies){
                    if(cookie.getName().equals("id")){
                        id = cookie.getValue();
                        break;
                    }
                }
            }
            
            if(id == null){
                response.sendRedirect("login-main.jsp");
            }
        %>
        <div class="text-center">
            <h3><%=id %>님 환영합니다!</h3>
            <br>
            <button type="button" class="btn btn-secondary" onclick="location.href='Logout.jsp'">로그아웃</button>
        </div>
    </div>
</body>
</html> 