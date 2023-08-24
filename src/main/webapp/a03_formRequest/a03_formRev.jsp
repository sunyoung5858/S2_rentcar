<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>가격표</h2>
	<h3> <%=request.getParameter("pname") %>는
	<%=request.getParameter("price") %>원 입니다.</h3>
</body>
</html>