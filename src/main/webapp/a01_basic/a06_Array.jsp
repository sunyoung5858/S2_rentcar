<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%--
	# 배열 데이터 처리.
	1. 배열을 이용하면 for문과 if문을 통해서 다양한 형식의 웹화면을 처리할 수 있다.

 --%>
	 <ol>
	 <%
	 	String [] fruits = {"사과","바나나","딸기"};
	 	for(String fruit:fruits){
	 %>
	 	<li><%=fruit %></li>
	 <% } %>		
	</ol>
<%-- 연습문제. select의 option 내용에 맞는 부서 정보를 배열로 선언하고 출력하세요. --%>	
	<% String [] parts = {"인사","회계","재무","기획"};
		int pcodes[] = {10,20,30,40};
	%>
		부서: 
		<select onchange="alert('선택값 : '+this.value)">
			<option value='00'>부서 선택하세요</option>
		<%for(int idx=0; idx<parts.length;idx++){ %>
			<option value="<%=pcodes[idx]%>"><%=parts[idx]%></option>
		<% } %>
		</select>
</body>
</html>