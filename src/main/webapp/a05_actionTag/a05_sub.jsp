<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// ctrl+shift+f : 소스정리.
String name = request.getParameter("name");
String kor = request.getParameter("kor");
String eng = request.getParameter("eng");
String math = request.getParameter("math");
%>
<table class="table table-striped table-hover">
	<thead class="table-success">
		<tr class="text-center">
			<th>이름</th>
			<th>국어</th>
			<th>영어</th>
			<th>수학</th>
		</tr>
	</thead>
	<tbody>
		<tr class="text-center">
			<td><%=name%></td>
			<td><%=kor%></td>
			<td><%=eng%></td>
			<td><%=math%></td>
		</tr>
	</tbody>
</table>