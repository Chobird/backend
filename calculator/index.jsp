<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>간단한 계산기</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="calculator">
        <form method="post" action="calculate.jsp">
            <div class="input-group">
                <label>x:</label>
                <input type="number" name="x" placeholder="첫 번째 숫자" value="${param.x}">
            </div>
            <div class="input-group">
                <label>y:</label>
                <input type="number" name="y" placeholder="두 번째 숫자" value="${param.y}">
            </div>
            <div class="buttons">
                <button type="submit" name="operator" value="+">+</button>
                <button type="submit" name="operator" value="-">-</button>
                <button type="submit" name="operator" value="*">*</button>
                <button type="submit" name="operator" value="/">/</button>
            </div>
        </form>
        
        <div id="result" class="result">
            결과가 여기에 표시됩니다.
        </div>
        <div id="error" class="error">
        </div>
    </div>
</body>
</html> 