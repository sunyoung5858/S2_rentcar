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
 # scriptlet
 1. jsp���� ���� ���� Ȱ��Ǵ� java�ڵ� �� ������ ó���Ǵ� �κ��̴�.
 2. �������� ȭ�� ������ �Բ� ���� Ȱ��ȴ�.
 	(�޼��� �� �ȿ� ó���Ǵ� �κ����� java�� �����ϸ� main()���� ó���Ǵ�
 	 ���� ȭ���� �����ϴ� �κ��̴�.)
 	1) ������ ����
 	2) ���� �Ҵ� �� Ȱ��
 	3) �������� ȭ��� �Բ� ���� ó��.

--%>
<%
	String name= "ȫ�浿";
	String [] arry = {"���","�ٳ���","����"};
%>
<%	
	for	(String fruit: arry){
%>
	<%-- ��� ���� --%>
	<h2> ����: <%=fruit%></h2>
<% } %>	
<%--
 # scriptlet ���� (�ܰ躰)
 1. �ݺ���
 	1) ���� �����ڿ� ���� ȭ�� ���� ó��..
 	2) ��������/�������� Ȱ��
 2. ���ǹ�
 3. �ݺ����� ���ǹ� ȥ��
 4. �迭 ������ ó��
 5. ��ü ���
 6. ��ü�� �迭ó��.--%>
 	
 	<%-- 1~20���� h3�� ī��Ʈ�� --%>
 	<h2>ī��Ʈ ��</h2>
 	<% for(int cnt=1;cnt<=20;cnt++){ %>
 		<h3><%=cnt %></h3>
 	<% } %>
 	<%-- �������� : ���̺��� 1x10�� ī��Ʈ�ٿ� --%>
 	<table border>
 		<tr>
 		<% for(int cnt=10;cnt>0;cnt--){ %>
 		<td width='150px' height='50px' align='center'><%=cnt %></td>
 		<% } %>
 		</tr>
 	</table>
 	
<%-- #JSP�� ���ǹ� ó��
	1. JAVA���� �ڵ忡�� ȭ���� �и���Ű�ų� ������ �и���ų �� Ȱ��ȴ�.
	2. �������� ����
		1) ȭ�� �и�
			���ѿ� ���� �޴� �׸��� �ٸ��� ó���� ��..
		2) ������ ���� ó��..
			point�� ���ؼ� �� ����� �ٸ��� ������ ������ ��..
			
			
	<% %> : java
			
					
--%>

	<% // java (���ѿ� ���� �ٸ� �޴��� �����ֱ�)
	   // java ���ǹ� �ȿ��� html�±׸� ����� �� �ִ�.
		String auth = "admin";
		if(auth.equals("admin")){
	%>
		<span>�����ڸ޴�</span>
		<span>ȸ���޴�</span>
		<span>��۰��� ó�� �޴�</span>
	<%
		} else{
	%>	
		<span>��ǰ����1</span>
		<span>��ǰ����2</span>
		<span>��ٱ��ϸ޴�</span>
	<% } %>
	
	<%
	int point = (int)(Math.random()*1000+1);
	String grade = "";
	if(point>=800){
		grade = "VVIP";
	}else if(point>=500){
		grade = "VIP";
	}else{
		grade = "�Ϲݵ��";
	}
	%>
	<h2>
		����Ʈ: <%=point %>, �����: <%=grade %>
	</h2>
<%-- �������� 
	������ ���� 1~10���� �߻��ؼ� ¦���� ���� Ȧ���� ���� ������, ���� �ٸ� ��¹��� �����Ͻÿ�.
--%>
	<%
		int random = (int)(Math.random()*10+1);
		String comment="";
	 	if(random%2==0){
	 		comment="������ ���� ���� ���Դϴ�.";
	 	}else{
	 		comment="������ ���� �� �����ó׿�. Ȱ���� �ﰡ�Ͻʽÿ�.";
	 	}
	%>
		<h2>������ ����: <%=random%>, ������ �: <%=comment %></h2>
<%-- ���� ���� ���̴� 1~90 ����--%>
	<%
		int age = (int)(Math.random()*90+1);
		String notice="";
	 	if(age<=13){
	 		notice="��� ����Ʈ�Դϴ�.";
	 	}else if(age<=18){
	 		notice="û�ҳ� ����Ʈ�Դϴ�.";
	 	}else if(age<=65){
	 		notice="�Ϲ� ����Ʈ�Դϴ�.";
	 	}else{
	 		notice="������ ���� ����Ʈ�Դϴ�.";
	 	}
	%>
	<h2>�Է��� ����: <%=age%>, �ȳ��޽���: <%=notice %></h2>
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>