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
	1. query string vs request.getParmater("")
	  1) 페이지명?key=value
	  2) String val= request.getParameter("key")
	  	1) 1개의 매개변수	
	  	2) 2개의 매개변수
	  	3) 숫자형 매개변수
	  	4) 배열형 매개변수
	  	5) 객체형 매개변수
	2. query string은 클라이언트에서 서버로 데이터를 전송해주기 위한 목적.
		
	a01_step01.jsp?food=짜장면
--%>
	<h2>초기 요청 페이지</h2>
<%
	String food = request.getParameter("food");
	String fruit = request.getParameter("fruit");
%>
	<h3>받은 음식물: <%=food %></h3>
	<h3>받은 과일 : <%=fruit %></h3>
	//
	<h2>구매할 물건 정보를 입력하세요.</h2>	
	<form>
		물건명: <input type="text" name="stuff"/><br>
		가격: <input type="text" name="price"/><br>
		갯수: <input type="text" name="cnt"/><br>
		<input type="submit" value="구매하기"/><br>
	</form>
<%
	String stuff = request.getParameter("stuff");
	String priceS = request.getParameter("price");
	String cntS = request.getParameter("cnt");
	int price =0;
	int cnt =0;	
	if(priceS!=null) price = Integer.parseInt(priceS);
	if(cntS!=null) cnt = Integer.parseInt(cntS);
%>
	<h2>구매한 물건</h2>
	<table width="30%" border>
		<tr><th>물건명</th><th><%=stuff %></th></tr>
		<tr><th>가격</th><th><%=price %></th></tr>
		<tr><th>갯수</th><th><%=cnt %></th></tr>
		<tr><th>총비용</th><th><%=price*cnt %></th></tr>
	</table>
</body>
</html>