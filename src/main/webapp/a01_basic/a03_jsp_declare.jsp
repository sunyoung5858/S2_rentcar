<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
	String name = "사과";
	int price = 2000;
	String getInfo(){
		return name+"("+price+")";
	}
	%>
<h3>구매한 물건: <%=name %></h3>
<h3>요약 : <%=getInfo() %></h3>

</body>
</html>