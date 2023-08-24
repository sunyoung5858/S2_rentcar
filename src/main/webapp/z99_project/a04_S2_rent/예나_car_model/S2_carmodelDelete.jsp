<%@page
	import = "frontWeb.z99_project.a03_rent.*"
	import = "frontWeb.z99_project.vo.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mDao" class="frontWeb.z99_project.a03_rent.A01_S2ModelDao" scope="application"/>

<%
	String model = request.getParameter("model");
	mDao.deleteModel(model);
	
	response.sendRedirect("S2_carmodelList.jsp");
%>