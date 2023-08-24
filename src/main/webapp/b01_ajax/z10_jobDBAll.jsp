<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*"
	import="backWeb2.z01_vo.Job"
	import="backWeb.a01_dao.A04_PreparedDao"

	%>
<%
// a10_DBAjax.jsp?title=Clerk&min_sal1=2000&min_sal2=4000
String title = request.getParameter("title");
if(title==null) title = "";
String min_sal1 = request.getParameter("min_sal1");
if(min_sal1==null) min_sal1 = "0";
String min_sal2 = request.getParameter("min_sal2");
if(min_sal2==null) min_sal2 = "999999";
// ex) a10_DBAjax.jsp 처리하세요.
A04_PreparedDao dao = new A04_PreparedDao();
Map<String, String> map = new HashMap<String,String>();
map.put("title",title); 
map.put("min_sal1",min_sal1); 
map.put("min_sal2",min_sal2); 
%>
<%for(Job job:dao.getJob(map)){ %>
<tr class="text-center">
	<td><%=job.getJob_id() %></td>
	<td><%=job.getJob_title() %></td>
	<td><%=job.getMin_salary()%></td>
	<td><%=job.getMax_salary()%></td>
</tr>
<%} %>
</html>