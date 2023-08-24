<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
  import = "frontWeb.z99_project.a03_rent.*"
  import = "frontWeb.z99_project.vo.*"
  import="java.util.*"
    %>
<%
String car_numberS = request.getParameter("car_number");
int car_number = 0;
if(car_numberS != null) car_number = Integer.parseInt(car_numberS);
S2carDao dao = new S2carDao();
dao.deleteS2Car(car_number);
%>