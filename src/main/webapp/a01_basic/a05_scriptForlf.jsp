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
	# �ݺ����� ���ǹ� Ȱ��
	1. �������� ������ script�� ���� java/html �ڵ带 ó���� �� �ִ�.
	2. �ݺ����� ���ǹ��� Ȱ���ϸ�, ������ ���� �������� ������ ȭ���� ������ �� �ִ�.
	3. �ַ� ���Ǵ� �����
		1) �񱳿�����
		2) ��������
		3) ��Ģ������(������ ������)
			% : �ݺ������� �ַ� Ư���� index�� �����ڵ带 �ݺ������� ó���Ͽ� ȭ���� ������ �� ���ȴ�.
			<tr>�� Ư�� ���ǿ� ���� ���
			if(cnt%4==1)
		4) ���ڿ� ��
			equals() : ��Ȯ�ϰ� ���� �� 
			indexOf() : ���ԵǾ� ���� ��
		5) ���� ��
	4. ó�� ���� ����
		1) �⺻ ������ �̿��� �ݺ���/���ǹ� ó��
		2) �ݺ��� �ۿ� ���������� Ȱ���Ͽ� ó���ϴ� ����


--%>
<%-- ��������. 1~10���� ����ϵ� ���ջ��� �������� ��� �ϼ���. --%>
<%
	int tot = 0;
	for(int cnt=1; cnt<=10; cnt++){
		tot += cnt;
		if(cnt == 10){
%>
		<%=cnt %> =
<% 		}else{ %>
		<%=cnt %> +
<% 		} 
	}%>
		����: <%= tot %>
<%-- �ݺ����� Ȱ���Ͽ� ������ �������� �����ϰ�, ���̺��� ���� ����ϼ���. --%>
	<%
	int random = (int)(Math.random()*9+1);
	%>
		<h3><%=random %>�� ����!</h3>
	<%
	for(int cnt=1; cnt<=9; cnt++){
	%>
		<h3><%=random %> x <%= cnt %> = <%= random*cnt %></h3>
	<% } %>	
<%-- Ȧ��/¦�� ǥ�� --%>	
		<h3>NO ����</h3>
	<%
		
		for(int cnt=0; cnt<=10; cnt++){
			String result = "";
			if(cnt%2==0){
				result = "¦��";
			}else{
				result = "Ȧ��";
			}
	%>
		<h3><%=cnt %> : <%=result %> </h3>
	<% } %>
<%-- form ȭ�鿡��  --%>
	





</body>
</html>