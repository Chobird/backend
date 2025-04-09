<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // 세션 무효화
    session.invalidate();
    
    // 쿠키 삭제
    Cookie[] cookies = request.getCookies();
    if(cookies != null){
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("id")){
                cookie.setMaxAge(0);
                response.addCookie(cookie);
                break;
            }
        }
    }
    
    response.sendRedirect("login-main.jsp");
%> 