<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- html �ּ��� client�� �����̵Ǽ� �ҽ��ڵ忡�� Ȯ�� ����. -->
<%-- jsp �ּ��� server�� �ȿ����� Ȯ�� �����ؼ�, �������� ���� ���޵��� �ʴ´�.--%>
<%-- 
 # jsp�� ��ũ��Ʈ
   1. �������� �ڹ��ڵ尡 ó���Ǵ� ������ ���ϰ�, 3���� �������� �����ȴ�.
   	1) �����(declaration)
   		<%!
   		
   		%>
   		: ���̿� ���� ����/���/�޼��� ����θ� ���Ѵ�.
   		class �ٷ� �ؿ� ���� �κ�..
   	2) ��ũ��Ʈ��(scriptlet)
   	3) ǥ����(expression) 
   		: <%=����/�޼���%>
   		  html ȥ���ؼ� ����� ��, ���ȴ�.	
   	
--%>
<%!
	// jsp�� java�� ����� ��, class�� �ؿ��� ����Ǵ� �κ�.
   	String pname = "���";
	String getName(){
		return pname;
	}
   %>
<h2> jsp�� ��ũ��Ʈ </h2>
<h2>����� ���� ȣ��: <%=pname %></h2>
<h2>����� �޼��� ȣ��: <%=getName()%></h2>
</body>
</html>