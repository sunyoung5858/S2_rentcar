<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"
    import="backWeb2.z01_vo.Product"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>	
<%-- 연습문제. 구매물품 상세정보로 테이블과 form 요소 객체를 이용하여
	물건명, 가격, 갯수, 상품정보를 table 안에 표현하되, VO객체를 만들어
	Value 값에 할당하세요.  --%>
<%
	Product p = new Product("사과",1500,3);
 %>
	<form>
		<table>
			<tr><th>물건명</th><th><input type="text" value="<%=p.getName()%>"></th></tr>
			<tr><th>가격</th><th><input type="text" value="<%=p.getPrice()%>"></th></tr>
			<tr><th>갯수</th><th><input type="text" value="<%=p.getCnt()%>"></th></tr>
			<tr><th colspan="2"><input type="submit" value="장바구니 추가"></th></tr>
		</table>
	</form>
</body>
</html>