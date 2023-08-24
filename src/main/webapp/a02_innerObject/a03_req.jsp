<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
	이름 : <input type="text" name="name" value=""/><br>
	국어점수 : <input type="text" name="kor" value=""/><br>
	<input type="submit" value="제출하기"/>
	</form>
	<hr>
	<%
		String name = request.getParameter("name");
		String korS = request.getParameter("kor");
		int kor =0;
		if(korS!=null){
			kor = Integer.parseInt(korS);
		}
	%>
	<table width="30%" height="100pt" border>
	<tr><th>이름</th><td><%=name %></td></tr>
	<tr><th>국어점수</th><td><%=kor+10%></td></tr>
	</table>
</body>
</html>