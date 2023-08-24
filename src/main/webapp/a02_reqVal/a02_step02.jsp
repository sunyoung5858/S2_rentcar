<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	ex. 국어, 영어, 수학 점수를 받아서 총점/평균을 처리하세요.
		1) 요청 형식 설정
		2) 변수 지정(문자형-요청값)
		3) 숫자형 변수 초기 0
		4) 조건문 null이 아닐때, 형변환
		5) 총합처리
		6) 평균처리
		7) 화면출력처리
 --%>
 
 	<h2>학생의 국어, 영어, 수학 점수</h2>
	<form>
		이름 : <input type="text" name= "name"/><br>
		국어 : <input type="text" name="kor"/><br>
		영어 : <input type="text" name="eng"/><br>
		수학 : <input type="text" name="math"/><br>
		<input type="submit" value="제출하기"/>
	</form>
 
 <%
	String name= request.getParameter("name");
	String korS= request.getParameter("kor");
	String engS= request.getParameter("eng");
	String mathS= request.getParameter("math");
	
	int kor = 0; 
	int eng = 0;
	int math= 0;
	if(korS!=null) kor = Integer.parseInt(korS);
	if(engS!=null) eng = Integer.parseInt(engS);
	if(mathS!=null) math = Integer.parseInt(mathS);
	int tot = kor+eng+math;
%>
	<h2><%= name%> 학생의 점수</h2>
	<h3>국어: <%=kor %></h3>
	<h3>영어: <%=eng %></h3>
	<h3>수학: <%=math %></h3>
	<h3>총계: <%= tot%> 평균: <%=tot/3 %></h3>
</body>
</html>