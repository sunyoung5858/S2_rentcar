<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
// JAVA �ڵ� ����(scriptllet)
	String name = "ȫ�浿";

%>
<body>
	<h2>�ȳ��ϼ��� <%=name%>jsp����!!</h2>
	<!-- 
	 # jsp �ڵ� ó�� ����
	 1. jsp�� WAS���� ������ ���� �������� ó���ȴ�.
	 	1) �ۼ���
	 		jsp : java + html
	 	2) ��ȯ����(WAS�� �����Ǹ鼭 ó��)
	 		jsp ==> servlet JSP�� ���������.
	 		.jsp ==> .java
	 	3) ������(WAS�� �����Ǹ鼭 ó��)
	 		.java ==> .class
	 	4) url�� client���� ȣ���.
	 		�������� .class�� ������ ���뿡 ����
	 		response ��ü�� ���� ���� html�� ���� ������ ����.
	 	5) ������ html ==> Ŭ���̾�Ʈ�� ���޵Ǿ� �������� ���� �������� ������
	 	   ȭ�鿡�� �� �� �ִ�.
	 # servlet jsp
	 1. jsp�� ���� java����
	 2. jsp�� ���� java�� ��ȯ�Ǿ� �ս��� �ڵ��ϱ� ���� ó�� ��� �߿� �ϳ��̴�.
	 3. servlet�� java�� ���� �����̳� �ȿ��� java+html�� html�� ���������� ����� client�� �����Ѵ�.
	 
	 -->
</body>
</html>