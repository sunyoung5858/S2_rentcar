<%@ page language="java" 
	contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
# jsp �ּ� : client�� ���޵��� �ʴ´�.
--%>
<%--	
 # jsp�� �� page �����ڿ� ���� servlet���� �����ϴ� rsponse�� �����κ��� ó���ϰ�,
 # out.print()�� ���� ó���� ���� �ڵ带 html ȭ�鿡�� ó���ϴ� ���̴�.
 # servlet���� ó���ϴ� java �ڵ�� <%%>, <%=%>�� ���ؼ� html �߰��߰��� �߰��ؼ�
 	���������� html+java�� ���� client�� �����Ѵ�.
 --%>
 <%
 // �ڹ��ڵ�.. <h2>html�±װ� �ٷ� ����Ǵ� ����?
 // PrintWriter out = response.getWriter();�� ����Ǿ� ����..
 // server(request, response) �޼���� ���ΰ� �ְ�, �ֿ� ���尴ü���� ���� ����� �����̴�.
 // out. session, request, response �� ����Ǿ� ����� ���� ���ΰ� �ֱ⿡ �����ϴ�.
 	out.print("<h2>�ڹ��ڵ�� h2�±� ����</h2>");
 	session.setAttribute("s01","himan");
 	String name = request.getParameter("name");
 	String name01 = "ȫ�浿";
 	int age = 25;
 	String loc = "����";
 // jsp�� java+html�� servlet�� ���� ���� html�� client �������� �����ϱ⿡
 // f12(�ҽ��ڵ�) Ȯ�� �� java �ڵ�� ������ �ʴ´�. 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- <%=������%> : JAVA�� ����� ������ HTML�ڵ�� �԰� ����Ҷ�, ����ϴ� expression ����--%>
	<h2>�̸� :<%=name01 %></h2>
	<h2>���� :<%=age %></h2>
	<h2>��°� :<%=loc %></h2>
</body>
</html>