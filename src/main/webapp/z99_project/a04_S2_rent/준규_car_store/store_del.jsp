<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import = "frontWeb.z99_project.a03_rent.*"
	import = "frontWeb.z99_project.vo.*"
	import="java.util.*"
    %>

<%
String storeS = request.getParameter("store");
int store = 0;
if(storeS != null) store = Integer.parseInt(storeS);
S2storeDao dao = new S2storeDao();
dao.deleteS2store(store);
%>
 <script>
      alert('지점이 삭제되었습니다.\n : 지점번호'+<%=store%>)
      location.href='store_view.jsp'
   </script>