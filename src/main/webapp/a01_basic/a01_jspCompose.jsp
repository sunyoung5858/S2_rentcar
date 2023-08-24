<%@ page language="java" 
	contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
# jsp 주석 : client에 전달되지 않는다.
--%>
<%--	
 # jsp는 위 page 지시자에 의해 servlet에서 설정하는 rsponse의 설정부분을 처리하고,
 # out.print()를 통해 처리할 내용 코드를 html 화면에서 처리하는 것이다.
 # servlet에서 처리하는 java 코드는 <%%>, <%=%>를 통해서 html 중간중간에 추가해서
 	최종적으로 html+java를 만들어서 client에 저장한다.
 --%>
 <%
 // 자바코드.. <h2>html태그가 바로 적용되는 이유?
 // PrintWriter out = response.getWriter();가 내장되어 있음..
 // server(request, response) 메서드로 감싸고 있고, 주요 내장객체들은 벌써 선언된 상태이다.
 // out. session, request, response 등 내장되어 선언된 것을 감싸고 있기에 가능하다.
 	out.print("<h2>자바코드로 h2태그 적용</h2>");
 	session.setAttribute("s01","himan");
 	String name = request.getParameter("name");
 	String name01 = "홍길동";
 	int age = 25;
 	String loc = "서울";
 // jsp는 java+html를 servlet로 만든 최종 html을 client 브라우저에 전달하기에
 // f12(소스코드) 확인 시 java 코드는 보이지 않는다. 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- <%=변수명%> : JAVA로 선언된 내용을 HTML코드와 함게 출력할때, 사용하는 expression 형식--%>
	<h2>이름 :<%=name01 %></h2>
	<h2>나이 :<%=age %></h2>
	<h2>사는곳 :<%=loc %></h2>
</body>
</html>