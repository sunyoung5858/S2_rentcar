<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//?name=연필&price=2500&name=지우개&price=500&name=색종이&price=1500
	String [] pName = request.getParameterValues("name");
	String [] pPrice = request.getParameterValues("price");
	out.print("<h3>no   물건명   가격");
	int tot = 0;
	if(pName!=null&&pPrice!=null){
		for(int idx=0; idx<pName.length;idx++){
			int price = Integer.parseInt(pPrice[idx]);
			out.print("<h3>"+(idx+1)+"   "+pName[idx]+
					"   "+price+"</h3>");
			tot += price;
		}
	}	
%>
	<h3>총비용: <%=tot %></h3>
</body>
</html>