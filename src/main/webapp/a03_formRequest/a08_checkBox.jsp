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
	# checkbox는 checked된 것만 전송한다.
	
 --%>
<%
	String foods [] ={"짜장면","짬뽕","탕수육","한정식","일식"};
	String locs [] = {"서울","경기","충청도","전라도","경상도"};
%>
	<form action="a09_checkRev.jsp">
		<h2>전송된 음식</h2>
		<% for(String food:foods){ %>
		<input type="checkbox" name="food" value="<%=food%>"/><%=food%><br>
		<%} %>
		<h2>살았던 지역을 체크하세요.</h2>
		<% for(String loc: locs){%>
			<input type="checkbox" name="loc" value="<%=loc %>"/><%=loc %><br>
		<% } %>
		<h2>사는 지역 선택</h2>
		<select name="loc" multiple>
			<%for(String loc: locs){ %>
			<option><%=loc+"[sel]" %></option>
			<%} %>
		</select><br>
		<input type="submit"/>
	</form>
	<br>
</body>
</html>