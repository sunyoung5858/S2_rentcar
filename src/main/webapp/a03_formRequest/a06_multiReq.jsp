<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 
	# form형식으로 다중 데이터 전송
	1. form하위 요청값은 name을 동일하게 하면, 요청페이지에서 
		request.getParameterValues를 통해서 배열로 처리할 수 있다.
	2. 단, <input type="checkbox"인 경우, check가 된 것만 배열로 전달한다.
	 

 --%>
 	<h2>동일한 name값 여러 데이터 전달</h2>
 	<form action="a07_rev.jsp">
 		등록회원1: <input type="text" name="member"/><br>
 		등록회원2 <input type="text" name="member"/><br>
 		등록회원3: <input type="text" name="member"/><br>
 		<input type="submit" value="제출"/>
 	</form>
 	<br>
 <%--
	연습문제. 구매물품의 가격 3개를 입력해서, 전송되게 하고, 총비용을 출력하세요.
 --%>
 	<h2>구매한 물건의 가격</h2>
 	<form action="a07_rev.jsp">
 		연필: <input type="text" name="buy_price" /><br>
 		지우개 <input type="text" name="buy_price" /><br>
 		사인펜: <input type="text" name="buy_price" /><br>
 		<input type="submit" value="submit"/>
 	</form>
</body>
</html>