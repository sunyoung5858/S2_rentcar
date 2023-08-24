<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "frontWeb.z99_project.a03_rent.A01_S2MemberDao"
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<script>
        function showFailureMessage() {
            alert("로그인 실패");
        }
    </script>
</head>
<body>
	<div class="container mt-3">
		<h2>로그인</h2>
		<form method="post">
			<div>
				<input type="text" id="id" placeholder="아이디를 입력해주세요" name="id" size="30"><br>
				<input type="password" id="pass" placeholder="비밀번호를 입력해주세요" name="pass" size="30">
			</div>
			<input type="submit" id="login" value="로그인"/>
		</form>
	</div>
</body>
<%
	String id = request.getParameter("id");
	if(id==null) id = "";
	String pass = request.getParameter("pass");
	if(pass==null) pass = "";
	A01_S2MemberDao dao = new A01_S2MemberDao();
	String return_msg = "";
	if(id==""||pass==""){
	}else if(dao.login(id,pass)){
		session.setAttribute("id", id);
        response.sendRedirect("S2_Main.jsp");
	}else{
		out.println("<script>showFailureMessage();</script>");
	}
		
%>
</html>