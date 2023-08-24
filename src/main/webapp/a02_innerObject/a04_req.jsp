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
 	연습문제. a04_req 
 	구매물품 : @@
 	구매가격 : @@
 	구매갯수 : @@
 	총액 : @@
 	1. 우선 데이터를 구매갯수까지 출력하고
 	2. 가격과 갯수를 형변환 처리하여 총액을 변수에 할당한 후,
 	3. 총액과 함께 전체 데이터를 요청값에 의해 출력하세요.
 	
 	 --%>
 	 
 	 <h2>장바구니</h2>
 	 <form>
 	 	구매물품: <input type="text" name = "name"  value=""/>
 	 	가격: <input type="text" name = "price"  value=""/>
 	 	갯수: <input type="text" name = "cnt"  value=""/>
 	 	<input type="submit" value="구매하기"/>
 	 </form>
 	 
 	 <%
 	 	String nameS = request.getParameter("name");
 	 	String priceS = request.getParameter("price");
 	 	String cntS = request.getParameter("cnt");
 	 	
 	 	int price = 0;
 	 	if(priceS!=null){
 	 		price = Integer.parseInt(priceS);
 	 	}
 	 	int cnt = 0;
 	 	if(cntS!=null){
 	 		cnt = Integer.parseInt(cntS);
 	 	}
 	 	
 	 	int tot = cnt * price;
 	 %>
 	 <h3>구매 품목 : <%=nameS %></h3>
 	 <h3>가격 : <%=price %>원</h3>
 	 <h3>갯수 : <%=cnt %>개</h3>
 	 <h3>총액 : <%=tot %>원</h3>
 	 
 	 
 	 
 	 
</body>
</html>