<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="backWeb2.z01_vo.Person"   
	import="backWeb2.z01_vo.Member"
	import="backWeb2.z01_vo.Job_history"      
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Insert title here</title>
</head>
<body>
<%
	session.setAttribute("p01",
		new Person("홍길동",25,"서울"));
	session.setAttribute("mem",
			new Member("himan","7777","홍길동",0,"관리자"));
	session.setAttribute("jh",
			new Job_history(1000,"2023-06-01","2023-06-26","사원",10));
%>
	


    <div class="container mt-3">
       <h2>el활용</h2>
       <a href='a03_session.jsp'>session확인하러 가기</a>
       <h3>이름:${p01.name}</h3> 
       <h3>나이:${p01.age}</h3> 
       <h3>사는곳:${p01.loc}</h3> 
       <!--  여기서 name,age,loc은 변수명이 아니라 getName()에서 가져온 return값이다.
       		(p01.getXXX())으로 호출되는 property이다. -->
     	<h2>회원정보</h2>
     	<h3>아이디: ${mem.id}</h3>
     	<h3>회원명: ${mem.name}</h3>
     	<h3>권한: ${mem.auth}</h3>
     	<h2>job history확인</h2>
     	<h3>아이디: ${jh.employee_id}</h3>
     	<h3>시작일: ${jh.start_dateS}</h3>
     	<h3>종료일: ${jh.end_dateS}</h3>
     </div>
</body>
</html>