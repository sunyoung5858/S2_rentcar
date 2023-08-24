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
	# 반복문과 조건문 활용
	1. 여러가지 유형의 script를 통한 java/html 코드를 처리할 수 있다.
	2. 반복문과 조건문을 활용하면, 로직에 의한 여러가지 형태의 화면을 구현할 수 있다.
	3. 주로 사용되는 연산식
		1) 비교연산자
		2) 논리연산자
		3) 사칙연산자(나머지 연산자)
			% : 반복문에서 주로 특정한 index의 구분코드를 반복적으로 처리하여 화면을 구현할 때 사용된다.
			<tr>을 특정 조건에 따른 사용
			if(cnt%4==1)
		4) 문자열 비교
			equals() : 정확하게 같을 때 
			indexOf() : 포함되어 있을 때
		5) 숫자 비교
	4. 처리 유형 형태
		1) 기본 로직을 이용한 반복문/조건문 처리
		2) 반복문 밖에 전역변수를 활용하여 처리하는 형태


--%>
<%-- 연습문제. 1~10까지 출력하되 총합산을 마지막에 출력 하세요. --%>
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
		총합: <%= tot %>
<%-- 반복문을 활용하여 임의의 구구단을 설정하고, 테이블을 통해 출력하세요. --%>
	<%
	int random = (int)(Math.random()*9+1);
	%>
		<h3><%=random %>단 시작!</h3>
	<%
	for(int cnt=1; cnt<=9; cnt++){
	%>
		<h3><%=random %> x <%= cnt %> = <%= random*cnt %></h3>
	<% } %>	
<%-- 홀수/짝수 표시 --%>	
		<h3>NO 구분</h3>
	<%
		
		for(int cnt=0; cnt<=10; cnt++){
			String result = "";
			if(cnt%2==0){
				result = "짝수";
			}else{
				result = "홀수";
			}
	%>
		<h3><%=cnt %> : <%=result %> </h3>
	<% } %>
<%-- form 화면에서  --%>
	





</body>
</html>