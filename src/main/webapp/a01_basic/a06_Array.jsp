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
	# �迭 ������ ó��.
	1. �迭�� �̿��ϸ� for���� if���� ���ؼ� �پ��� ������ ��ȭ���� ó���� �� �ִ�.

 --%>
	 <ol>
	 <%
	 	String [] fruits = {"���","�ٳ���","����"};
	 	for(String fruit:fruits){
	 %>
	 	<li><%=fruit %></li>
	 <% } %>		
	</ol>
<%-- ��������. select�� option ���뿡 �´� �μ� ������ �迭�� �����ϰ� ����ϼ���. --%>	
	<% String [] parts = {"�λ�","ȸ��","�繫","��ȹ"};
		int pcodes[] = {10,20,30,40};
	%>
		�μ�: 
		<select onchange="alert('���ð� : '+this.value)">
			<option value='00'>�μ� �����ϼ���</option>
		<%for(int idx=0; idx<parts.length;idx++){ %>
			<option value="<%=pcodes[idx]%>"><%=parts[idx]%></option>
		<% } %>
		</select>
</body>
</html>