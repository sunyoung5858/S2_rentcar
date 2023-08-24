<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>등록한 회원 명단</h2>
<%
	String members [] = request.getParameterValues("member");
	for(String member:members){
		member="";
		if(member!=null&&!member.equals(""))
		out.print("<h3>"+member+"</h3>");
	}
%>

	<h2>구매물품의 총가격</h2>
<%
	String price [] = request.getParameterValues("buy_price");
	int tot = 0;
	for(String prices : price){	
		if(prices!=null&&!prices.equals("")){
			int buy_prices = Integer.parseInt(prices);
			tot += buy_prices;
			out.print("<h3>가격: "+buy_prices+"</h3>");
		}
	}
%>
	<h3>총비용: <%=tot %></h3>
</body>
</html>