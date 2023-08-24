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
	String name= request.getParameter("name");
	String korS= request.getParameter("kor");
	String engS= request.getParameter("eng");
	String mathS= request.getParameter("math");
	
	int kor = 0; 
	if(korS!=null) kor = Integer.parseInt(korS);
	int eng = Integer.parseInt(engS);
	if(engS!=null) eng = Integer.parseInt(korS);
	int math = Integer.parseInt(mathS);
	if(mathS!=null) math = Integer.parseInt(korS);
	int tot = kor+eng+math;
%>
	<h2><%= name%> 학생의 점수</h2>
	<h3>국어: <%=kor %></h3>
	<h3>영어: <%=eng %></h3>
	<h3>수학: <%=math %></h3>
	<h3>총계: <%= tot%> 평균: <%=tot/3 %></h3>
</body>
</html>