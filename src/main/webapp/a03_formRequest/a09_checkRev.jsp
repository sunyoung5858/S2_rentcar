<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>좋아하는 음식(선택완료)</h2>
	<%
	String foods [] = request.getParameterValues("food");
	if(foods!=null)
	for(int idx=0;idx<foods.length;idx++){
		if(foods[idx]!=null && !foods[idx].equals(""))
		out.print("<h3>"+(idx+1)+")"+foods[idx]+"</h3>");
	}
	%>
	
	<h2>살았던 지역(선택완료)</h2>
	<%
	String locS [] = request.getParameterValues("loc");
	if(locS!=null)
	for(int idx=0;idx<locS.length;idx++){
		if(locS[idx]!=null && !locS[idx].equals(""))
		out.print("<h3> 지역명: "+locS[idx]+"</h3>");
	}
	%>
</body>
</html>