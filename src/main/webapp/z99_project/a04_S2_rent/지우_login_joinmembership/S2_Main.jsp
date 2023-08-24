<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "frontWeb.z99_project.a03_rent.*"
    import = "frontWeb.z99_project.vo.*"
    import = "java.util.*"
    %>
<%
	String id = (String) session.getAttribute("id");
	if(id==null) id="";
 	A01_S2MemberDao dao = new A01_S2MemberDao();
	S2_Member mem = dao.getMemList(id);
	String name = mem.getName();
	if(name==null) name = "";
	String auth = mem.getAuth();
	if(auth==null) auth="비회원";
	session.setAttribute("auth",auth);
	
	
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
<script type="text/javascript">
	function goAdmin(){
		location.href = "../reservation/Reservation_info.jsp"
	}
	function logout(){
		<%session.setAttribute("id","");%>
		location.href = "S2_Main.jsp"
	}
</script>
<body>
	<%if(id!=""){ %>
		<span onclick="logout()">로그아웃</span>
	<%}else{%>
		<span onclick="location.href='S2_Login.jsp'">로그인</span><span>　　</span>
		<span onclick="location.href='S2_JOIN_MEMBERSHIP.jsp'">회원가입</span>
	<%}%>
	<br><br><br>
	<h2>메인페이지</h2>
	<%if(name!=""){ %>
		<h3><%=name%>님 접속성공</h3>
		<%if(mem.getAuth().equals("관리자")){%>
			<h3 onclick="goAdmin()">관리자 페이지로 이동</h3>
		<%}%>
	<%}%>
</body>
</html>