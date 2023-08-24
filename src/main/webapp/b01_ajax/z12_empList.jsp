<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.google.gson.Gson"
    import="java.util.*"
    import="backWeb.a01_dao.A04_PreparedDao"
    import="backWeb2.z01_vo.Emp"
    %>
<%--
	요청값 : 사원명(ename), 직책(job)
	import : Dao, Vo, Gson
	List<Emp> empList = dao.getEmpList(ename,job)
	<%=gson.toJson(empList)%>
--%>
<%
	String ename = request.getParameter("ename");
	if(ename==null) ename="";
	String job = request.getParameter("job");
	if(job==null) job="";
	A04_PreparedDao dao = new A04_PreparedDao();
	List<Emp> empList = dao.getEmpList(ename,job);
	Gson gson = new Gson();
	
%>
	<%=gson.toJson(empList)%>