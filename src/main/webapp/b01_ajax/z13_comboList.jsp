<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="backWeb.a01_dao.A04_PreparedDao"
    import="backWeb2.z01_vo.Code"
    import="com.google.gson.Gson"
    import="java.util.*"
    %>
<%
/*
	요청값 : title
	import 처리(dao,Gson,Code)
	Gson으로 json 데이터 로딩

*/
String title = request.getParameter("title");
if(title==null) title="";
String refnoS = request.getParameter("refno");
int refno = 0;
if(refnoS!=null) refno = Integer.parseInt(refnoS);

A04_PreparedDao dao = new A04_PreparedDao();
Gson g = new Gson();

%>
<%= g.toJson(dao.getCodeList(title,refno))%>