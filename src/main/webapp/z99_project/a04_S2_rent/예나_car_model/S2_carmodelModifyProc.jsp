<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "frontWeb.z99_project.a03_rent.*"
	import = "frontWeb.z99_project.vo.*"
	import = "java.util.*"
    %>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="mDao" class="frontWeb.z99_project.a03_rent.A01_S2ModelDao" scope="application"/>
<jsp:useBean id="mVo" class="frontWeb.z99_project.vo.Model">
	<jsp:setProperty name="mVo" property="*"/>
</jsp:useBean>
<%
	mDao.modifyModel(mVo);
	response.sendRedirect("S2_carmodelList.jsp");
%>