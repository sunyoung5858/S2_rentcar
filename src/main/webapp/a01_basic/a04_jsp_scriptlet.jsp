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
 1. jsp에서 가장 많이 활용되는 java코드 및 로직이 처리되는 부분이다.
 2. 여러가지 화면 구성과 함께 많이 활용된다.
 	(메서드 블럭 안에 처리되는 부분으로 java로 비유하면 main()에서 처리되는
 	 실제 화면을 구현하는 부분이다.)
 	1) 변수도 선언
 	2) 변수 할당 및 활용
 	3) 여러가지 화면과 함께 로직 처리.

--%>
<%
	String name= "홍길동";
	String [] arry = {"사과","바나나","딸기"};
%>
<%	
	for	(String fruit: arry){
%>
	<%-- 출력 영역 --%>
	<h2> 과일: <%=fruit%></h2>
<% } %>	
<%--
 # scriptlet 연습 (단계별)
 1. 반복문
 	1) 증감 연산자에 의한 화면 구성 처리..
 	2) 지역변수/전역변수 활용
 2. 조건문
 3. 반복문과 조건문 혼합
 4. 배열 데이터 처리
 5. 객체 사용
 6. 객체형 배열처리.--%>
 	
 	<%-- 1~20까지 h3로 카운트업 --%>
 	<h2>카운트 업</h2>
 	<% for(int cnt=1;cnt<=20;cnt++){ %>
 		<h3><%=cnt %></h3>
 	<% } %>
 	<%-- 연습문제 : 테이블의 1x10로 카운트다운 --%>
 	<table border>
 		<tr>
 		<% for(int cnt=10;cnt>0;cnt--){ %>
 		<td width='150px' height='50px' align='center'><%=cnt %></td>
 		<% } %>
 		</tr>
 	</table>
 	
<%-- #JSP의 조건문 처리
	1. JAVA단의 코드에서 화면을 분리시키거나 로직을 분리시킬 때 활용된다.
	2. 여러가지 유형
		1) 화면 분리
			권한에 따른 메뉴 항목이 다르게 처리할 때..
		2) 로직에 의한 처리..
			point에 의해서 고객 등급을 다르게 변수로 설정할 때..
			
			
	<% %> : java
			
					
--%>

	<% // java (권한에 따라 다른 메뉴를 보여주기)
	   // java 조건문 안에서 html태그를 사용할 수 있다.
		String auth = "admin";
		if(auth.equals("admin")){
	%>
		<span>관리자메뉴</span>
		<span>회원메뉴</span>
		<span>배송관련 처리 메뉴</span>
	<%
		} else{
	%>	
		<span>물품종류1</span>
		<span>물품종류2</span>
		<span>장바구니메뉴</span>
	<% } %>
	
	<%
	int point = (int)(Math.random()*1000+1);
	String grade = "";
	if(point>=800){
		grade = "VVIP";
	}else if(point>=500){
		grade = "VIP";
	}else{
		grade = "일반등급";
	}
	%>
	<h2>
		포인트: <%=point %>, 고객등급: <%=grade %>
	</h2>
<%-- 연습문제 
	임의의 수를 1~10까지 발생해서 짝수일 때와 홀수일 때를 나누어, 각각 다른 출력물을 산출하시요.
--%>
	<%
		int random = (int)(Math.random()*10+1);
		String comment="";
	 	if(random%2==0){
	 		comment="오늘은 운이 좋은 날입니다.";
	 	}else{
	 		comment="오늘은 운이 안 좋으시네요. 활동을 삼가하십시오.";
	 	}
	%>
		<h2>오늘의 숫자: <%=random%>, 오늘의 운세: <%=comment %></h2>
<%-- 연습 문제 나이는 1~90 랜덤--%>
	<%
		int age = (int)(Math.random()*90+1);
		String notice="";
	 	if(age<=13){
	 		notice="어린이 사이트입니다.";
	 	}else if(age<=18){
	 		notice="청소년 사이트입니다.";
	 	}else if(age<=65){
	 		notice="일반 사이트입니다.";
	 	}else{
	 		notice="노인을 위한 사이트입니다.";
	 	}
	%>
	<h2>입력한 나이: <%=age%>, 안내메시지: <%=notice %></h2>
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>