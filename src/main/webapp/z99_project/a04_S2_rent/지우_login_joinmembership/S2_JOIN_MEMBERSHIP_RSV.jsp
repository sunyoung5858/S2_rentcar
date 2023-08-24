<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "frontWeb.z99_project.a03_rent.A01_S2MemberDao"
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
</head>
<%--id, pass, name, phone, address --%>
<%
	String id = request.getParameter("id");
	if(id==null) id = "";
	
	String pass = request.getParameter("pass");
	if(pass==null) pass = "";
	
	String name = request.getParameter("name");
	if(name==null) name = "";
	
	String phone_first = request.getParameter("phone_first");
	if(phone_first==null) phone_first = "";
	
	String phone_middle = request.getParameter("phone_middle");
	if(phone_middle==null) phone_middle = "";
	
	String phone_last = request.getParameter("phone_last");
	if(phone_last==null) phone_last = "";
	
	String phone = phone_first+phone_middle+phone_last;
	
	String email_id = request.getParameter("email_id");
	if(email_id==null) email_id = "";
	
	String email_address = request.getParameter("email_address");
	if(email_address==null) email_address = "";
	
	String email = email_id+"@"+email_address;
	
	String address = request.getParameter("address");
	if(address==null) address = "";
	
	String address_detail = request.getParameter("address_detail");
	if(address_detail==null||address_detail.equals("")){
		address_detail = "";
	}else{
		address+="("+address_detail+")";
	}

	A01_S2MemberDao dao = new A01_S2MemberDao();
	dao.memberIns(id,pass,name,phone,email,address);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입 완료</title>
</head>
<body>
	<h1>회원가입을 축하합니다!</h1>
	<table border>
		<tr><th>아이디</th><td><%=id%></td></tr>
		<tr><td colspan='2'><%=name%>님! 회원이 되신 것을 진심으로 축하드립니다!</td></tr>
		<tr><td colspan='2' onclick='goMain()'>메인페이지로 이동</td></tr>
	</table>
</body>
<script type="text/javascript">
	function goMain(){
		location.href = "S2_Main.jsp"
	}
</script>
</html>

