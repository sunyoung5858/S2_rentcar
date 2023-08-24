<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- html 주석은 client에 전달이되서 소스코드에서 확인 가능. -->
<%-- jsp 주석은 server단 안에서만 확인 가능해서, 브라우저를 통해 전달되지 않는다.--%>
<%-- 
 # jsp의 스크립트
   1. 동적으로 자바코드가 처리되는 내용을 말하고, 3가지 유형으로 구성된다.
   	1) 선언부(declaration)
   		<%!
   		
   		%>
   		: 사이에 들어가는 변수/상수/메서드 선언부를 말한다.
   		class 바로 밑에 선언 부분..
   	2) 스크립트릿(scriptlet)
   	3) 표현식(expression) 
   		: <%=변수/메서드%>
   		  html 혼합해서 출력할 때, 사용된다.	
   	
--%>
<%!
	// jsp가 java로 변경될 때, class명 밑에서 선언되는 부분.
   	String pname = "사과";
	String getName(){
		return pname;
	}
   %>
<h2> jsp의 스크립트 </h2>
<h2>선언된 변수 호출: <%=pname %></h2>
<h2>선언된 메서드 호출: <%=getName()%></h2>
</body>
</html>