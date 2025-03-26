<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    try {
        double x = Double.parseDouble(request.getParameter("x"));
        double y = Double.parseDouble(request.getParameter("y"));
        String operator = request.getParameter("operator");
        double result = 0;
        String operatorText = "";
        
        switch(operator) {
            case "+":
                result = x + y;
                operatorText = "덧셈";
                break;
            case "-":
                result = x - y;
                operatorText = "뺄셈";
                break;
            case "*":
                result = x * y;
                operatorText = "곱셈";
                break;
            case "/":
                if (y == 0) {
                    throw new ArithmeticException("0으로 나눌 수 없습니다.");
                }
                result = x / y;
                operatorText = "나눗셈";
                break;
        }
        
        // 결과가 정수인지 확인
        String formattedResult = (result == (long) result) ? 
            String.format("%d", (long)result) : 
            String.format("%.2f", result);
            
        out.println(operatorText + " 결과는 : " + formattedResult);
        
    } catch (ArithmeticException e) {
        response.setStatus(400);
        out.println("나눗셈 불능입니다. 0으로 나눌 수 없습니다.");
    } catch (NumberFormatException e) {
        response.setStatus(400);
        out.println("올바른 숫자를 입력해주세요.");
    }
%> 