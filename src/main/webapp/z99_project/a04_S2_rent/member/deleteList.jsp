<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "frontWeb.z99_project.a03_rent.*"
	import = "frontWeb.z99_project.vo.*"
	import = "java.util.*"
%>

<%
 	String id = request.getParameter("id");
	if(id==null) id="";
	S2_MemberDao dao = new S2_MemberDao();
 	dao.deleteMember(id);
%>
	<script>
		alert('회원 정보가 삭제되었습니다.')
		location.href='Member_info.jsp'
	</script>