<%@ page import="cookie.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    
    LoginDao dao = new LoginDao();
    int i = dao.loginCheck(id, pwd);
    if(i==1){
        session.setAttribute("id", id);
        
        // 쿠키 생성
        Cookie cookie = new Cookie("id", id);
        cookie.setMaxAge(60*60*24); // 24시간
        response.addCookie(cookie);
        
        response.sendRedirect("welcome.jsp");
    }else{
        out.println("<script>alert('유효한 사용자가 아닙니다.'); history.go(-1);</script>");
    }
%> 